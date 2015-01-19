var mongoose = require('mongoose');
var ObjectId = mongoose.Schema.Types.ObjectId;


// define schema for tag model
var tagSchema = mongoose.Schema({
    tag: String,
    parentTagId: {type: ObjectID, ref: 'Tag'}
});


// checks for cylce in parent-child relations of tags (should never be allowed to exist)
tagSchema.methods.isInCycle = function() {
    // searches parents for this tag
    var idToCheck = this.parentTagId;
    var reachedRoot = false;

    while(reachedRoot === false) {
        Tag.findOne({ '_id' : idToCheck}, function(err, tag) {
            if (err)
                return new Error(err);

            if (tag) {
                if (tag._id === this._id)
                    return true; // found ancestor equal to this tag
            } else {
                reachedRoot = true; // found no more tags to check
            }
        });
    }

    return false; // checked all ancestors
}


// returns true when this tag has no parent
tagSchema.methods.isRoot = function() {
    Tag.find({ '_id' : this.parentTagId}, function(err, tags) {
        if (err)
            return new Error(err);

        if (tags)
            return false;
        else
            return true;
    });
}


// returns true when this tag has no children
tagSchema.methods.isLeaf = function() {
    Tag.find({ 'parentTagId' : this._id}, function(err, tags) {
        if (err)
            return new Error(err);

        if (tags)
            return false;
        else
            return true;
    });
}


// returns array containing parent tags (at most one expected)
tagSchema.methods.parents = function() {
    var parentTags = [];    
    
    Tag.findOne({ '_id' : this.parentTagId }, function(err, tags) {
        if (err)
            return new Error(err);

        if (tags)
            parentTags = tags;
    });

    return parentTags;
}


// returns array of tags that refer to this tag as immediate parent
tagSchema.methods.children = function() {
    var childrenTags = [];    
    
    Tag.findOne({ 'parentTagid' : this._id }, function(err, tags) {
        if (err)
            return new Error(err);

        if (tags)
            childrenTags = tags;
    });

    return childrenTags;
}


// returns array of tags that can be reached from this tag by traversing parents
tagSchema.methods.ancestors = function() {
    var ancestorTags = [];
    var tagsToExpand = [this];
    var currentTag;

    // depth-first search of parents
    while (tagsToExpand.length > 0) {
        currentTag = tagsToExpand.pop();
        
        currentTag.parents().forEach(function(parentTag) {
            if (ancestorTags.indexOf(parentTag) === -1)
                ancestorTags.push(parentTag) // adds parent to ancestors if not already present

            if (tagsToExpand.indexOf(parentTag) === -1)
                tagsToExpand.push(parentTag) // adds parent to tags to expand if not already present
        })
    }

    return ancestorTags;
}


// returns array of tags that can be reached from this tag by traversing children
tagSchema.methods.descendants = function() {
    var descendantTags = [];
    var tagsToExpand = [this];
    var currentTag;

    // depth-first search of children
    while (tagsToExpand.length > 0) {
        currentTag = tagsToExpand.pop();
        
        currentTag.children().forEach(function(childTag) {
            if (descendantTags.indexOf(childTag) === -1)
                descendantTags.push(childTag) // adds parent to ancestors if not already present

            if (tagsToExpand.indexOf(childTag) === -1)
                tagsToExpand.push(childTag) // adds parent to tags to expand if not already present
        })
    }

    return descendantTags;
}


// export model
module.exports = mongoose.model('Tag', tagSchema);