    var tags = [{"parentTags": ["equation","number theory"],"tag": "diophantine equation"}
                ,{"parentTags": ["proof"],"tag": "proof by contradiction"}
                ,{"parentTags": ["quadrilateral"],"tag": "kite"}
                ,{"parentTags": ["polynomial"],"tag": "vieta's formula"}
                ,{"parentTags": ["polynomial"],"tag": "roots"}
                ,{"parentTags": ["number theory"],"tag": "prime number"}
                ,{"parentTags": ["circle"],"tag": "power of a point"}
                ,{"parentTags": ["equation"],"tag": "proportion"}
                ,{"parentTags": ["counting"],"tag": "PIE"}
                ,{"parentTags": ["algebra"],"tag": "coordinates"}
                ,{"parentTags": ["algebra","number theory"],"tag": "bases"}
                ,{"parentTags": ["number theory"],"tag": "factor"}
                ,{"parentTags": ["2D geometry"],"tag": "circle"}
                ,{"parentTags": ["triangle"],"tag": "pythagorean theorem"}
                ,{"parentTags": ["algebra"],"tag": "logarithm"}
                ,{"parentTags": ["3D geometry"],"tag": "cube"}
                ,{"parentTags": ["polygon"],"tag": "triangle"}
                ,{"parentTags": ["counting"],"tag": "combinations"}
                ,{"parentTags": ["trigonometry"],"tag": "trigonometric identity"}
                ,{"parentTags": ["triangle"],"tag": "triangle center"}
                ,{"parentTags": ["trigonometry"],"tag": "cosine"}
                ,{"parentTags": ["statistics"],"tag": "median"}
                ,{"parentTags": ["statistics"],"tag": "mode"}
                ,{"parentTags": ["trigonometry"],"tag": "law of sines"}
                ,{"parentTags": ["statistics"],"tag": "mean"}
                ,{"parentTags": ["function"],"tag": "domain"}
                ,{"parentTags": ["trigonometric identity"],"tag": "trigonometry addition formula"}
                ,{"parentTags": ["algebra"],"tag": "exponent"}
                ,{"parentTags": ["polynomial","function"],"tag": "cubic"}
                ,{"parentTags": ["polynomial","number theory"],"tag": "binomial theorem"}
                ,{"parentTags": ["quadrilateral"],"tag": "squares"}
                ,{"parentTags": ["proof"],"tag": "induction"}
                ,{"parentTags": ["fleek"],"tag": "math"}
                ,{"parentTags": ["science"],"tag": "biology"}
                ,{"parentTags": ["probability"],"tag": "geometric probability"}
                ,{"parentTags": ["algebra"],"tag": "statistics"}
                ,{"parentTags": ["trigonometry"],"tag": "tangent"}
                ,{"parentTags": ["circle"],"tag": "incircle"}
                ,{"parentTags": ["trigonometry"],"tag": "sine"}
                ,{"parentTags": ["modular arithmetic"],"tag": "remainder"}
                ,{"parentTags": ["counting"],"tag": "casework counting"}
                ,{"parentTags": ["number theory"],"tag": "divisor"}
                ,{"parentTags": ["math"],"tag": "algebra"}
                ,{"parentTags": ["math"],"tag": "geometry"}
                ,{"parentTags": ["quadrilateral"],"tag": "rhombus"}
                ,{"parentTags": ["function"],"tag": "range"}
                ,{"parentTags": ["geometry"],"tag": "2D geometry"}
                ,{"parentTags": ["polygon"],"tag": "hexagon"}
                ,{"parentTags": ["triangle"],"tag": "similar triangles"}
                ,{"parentTags": ["counting"],"tag": "Venn Diagram"}
                ,{"parentTags": ["number theory"],"tag": "modular arithmetic"}
                ,{"parentTags": ["combinatorics"],"tag": "probability"}
                ,{"parentTags": ["polygon"],"tag": "quadrilateral"}
                ,{"parentTags": ["polynomial"],"tag": "factoring"}
                ,{"parentTags": ["algebra"],"tag": "polynomial"}
                ,{"parentTags": ["polygon"],"tag": "pentagon"}
                ,{"parentTags": ["algebra"],"tag": "arithmetic sequence"}
                ,{"parentTags": ["counting"],"tag": "complementary counting"}
                ,{"parentTags": ["geometry"],"tag": "area"}
                ,{"parentTags": ["math"],"tag": "combinatorics"}
                ,{"parentTags": ["polynomial","function","equation"],"tag": "quadratic"}
                ,{"parentTags": ["algebra"],"tag": "geometric series"}
                ,{"parentTags": ["geometry"],"tag": "analytic geometry"}
                ,{"parentTags": ["algebra"],"tag": "function"}
                ,{"parentTags": ["geometry"],"tag": "congruence"}
                ,{"parentTags": ["modular arithmetic"],"tag": "chinese remainder theorem"}
                ,{"parentTags": ["geometry"],"tag": "3D geometry"}
                ,{"parentTags": ["factor"],"tag": "number of divisors"}
                ,{"parentTags": ["polynomial","function"],"tag": "quartic"}
                ,{"parentTags": ["fleek"],"tag": "science"}
                ,{"parentTags": ["algebra"],"tag": "equation"}
                ,{"parentTags": ["math"],"tag": "number theory"}
                ,{"parentTags": ["trigonometry"],"tag": "law of cosines"}
                ,{"parentTags": ["function"],"tag": "floor function"}
                ,{"parentTags": ["algebra"],"tag": "trigonometry"}
                ,{"parentTags": ["math"],"tag": "proof"}
                ,{"parentTags": ["3D geometry"],"tag": "pyramid"}
                ,{"parentTags": ["counting"],"tag": "permutations"}
                ,{"parentTags": ["equation"],"tag": "linear equation"}
                ,{"parentTags": ["3D geometry"],"tag": "sphere"}
                ,{"parentTags": ["circle"],"tag": "circumcircle"}
                ,{"parentTags": ["3D geometry"],"tag": "cone"}
                ,{"parentTags": ["combinatorics"],"tag": "counting"}
                ,{"parentTags": ["bases"],"tag": "binary"}
                ,{"parentTags": ["geometry"],"tag": "angle"}
                ,{"parentTags": ["2D geometry"],"tag": "polygon"}
                ,{"parentTags": ["equation"],"tag": "recursion"}
                ,{"parentTags": ["recursion"],"tag": "fibnoacci numbers"}
                ,{"parentTags": ["3D geometry"],"tag": "prism"}
                ,{"parentTags": ["counting"],"tag": "constructive counting"}
                ,{"parentTags": ["math"],"tag": "arithmetic"}
                ,{"parentTags": ["geometry"],"tag": "perimeter"}
                ,{"parentTags": ["circle"],"tag": "arcs"}
                ,{"parentTags": ["math"],"tag": "logic"}
                ,{"parentTags": ["polygon"],"tag": "octagon"}
                ,{"parentTags": ["trigonometric identity"],"tag": "double angle formula"}
                ,{"parentTags": ["quadrilateral"],"tag": "cyclic quadrilateral"}
                ,{"parentTags": ["science"],"tag": "chemistry"}
                ,{"parentTags": ["circle"],"tag": "sectors"}
                ,{"parentTags": ["circle"],"tag": "chords"}
                ,{"parentTags": ["factor"],"tag": "greatest common divisor"}
                ,{"parentTags": ["function"],"tag": "ceiling function"}
                ,{"parentTags": ["science"],"tag": "physics"}
                ];



// Take all the tags and make an array out of them. This is to prevent duplicates and get ID's.
var allTags = [];

  for (var i = 0; i<tags.length; i++) {
    //console.log(tags[i].tag)
    tagDict = tags[i];
    tagName = tagDict.tag;
    if (allTags.indexOf(tagName)<0){
        allTags.push(tagName);
    }
    parentList = tagDict.parentTags;
    for (var j = 0; j<parentList.length; j++) {
        if (allTags.indexOf(parentList[j])<0){
            allTags.push(parentList[j]);
        }
    }
  }


function getID(tag_name) {
  return allTags.indexOf(tag_name);
}
totalNodes = [];

// Go back, and add the nodes now. 
var vis_nodes = new vis.DataSet();

for (var i = 0; i<allTags.length; i++) {
    var displayButton = "<a class=\"btn btn-default btn-xs\" href=\"#\" role=\"button\"> Find \n"+allTags[i]+" problems</a>";
    if (allTags[i]=="fleek") {
      totalNodes.push({id:i, label:allTags[i], title:displayButton, group:"fleek"});
    }
    else if (allTags[i]=="math" || allTags[i]=="science") {
      totalNodes.push({id:i, label:allTags[i], title:displayButton, group:"mathsci"});
    }
    else {
      totalNodes.push({id:i, label:allTags[i], title:displayButton});
    }
}

totalEdges = [];
 vis_edges = new vis.DataSet();

// Now, add the edges. 

  for (var i = 0; i<tags.length; i++) {
    tagDict = tags[i];
    tagName = tagDict.tag;
    firstInd = allTags.indexOf(tagName);
    parentList = tagDict.parentTags;
    for (var j = 0; j<parentList.length; j++) {
        secondInd = allTags.indexOf(parentList[j]);
        totalEdges.push({from:secondInd, to:firstInd});
    }
  }


vis_nodes.add({id:getID("fleek"), label:"fleek", group:"nochildren"});
vis_nodes.add({id:getID("math"), label:"math", group:"haschildren"});
vis_nodes.add({id:getID("science"), label:"science", group:"haschildren"});
vis_edges.add({from:getID("fleek"), to:getID("math")});
vis_edges.add({from:getID("fleek"), to:getID("science")});


  // create a network
  var container = document.getElementById('mynetwork');
  var data = {
    nodes: vis_nodes,
    edges: vis_edges
  };


  var options = {
    groups: {
      haschildren: {
        fontSize: 24,
        color: {
          border: '#FFB6C1',
          background: '#FFB6C1',
        }
        },
      nochildren: {
        fontSize: 24,
        color: {
          border: '#e74c3c',
          background: '#e74c3c',
        }
      }
    },
    zoomExtentOnStabilize:true,
    keyboard:true,/*
    hierarchicalLayout: {
      nodeSpacing:180,
      enabled: true,
      direction: "UD",
      layout: "direction"
    },*/
    tooltip: {
    delay: 300,
    fontColor: "black",
    fontSize: 14, // px
    fontFace: "Roboto",
    color: {
      border: "#666",
      background: "transparent"
    }
  },
physics: {
      barnesHut: {
          enabled: true,
          gravitationalConstant: -40000,
          centralGravity: 0.1,
          springLength: 98,
          springConstant: 0.14,
          damping: 0.09
      },
      repulsion: {
          centralGravity: -0.1,
          springLength: 50,
          springConstant: 0.15,
          nodeDistance: 30,
          damping: 0.09
      }
  },
    dragNodes:true,
    nodes: {
        color: {
          background: '#FFB6C1',
          border: '#ed458d',
          highlight: {
            background: '#3498db',
            border: '#3498db'
          },
          hover: {
            background:'white',
            border: '#ed458d'
          }
        },
        shape: 'box'
      }
  };

  network = new vis.Network(container, data, options);

function stillHasChildren(tagID) {
  numCurr = 0;
  var group2 = vis_edges.get({
      filter: function (item) {
        if (item.from == tagID) {
          numCurr++;
        }
        return (item.from == tagID);
      }
    });

  //numCurr = group2.length;

  numTot = 0;
  for (var j = 0; j < totalEdges.length; j++) {
      if (totalEdges[j].from == tagID) {
        numTot ++;
      }
  }
  //console.log("right now, " + allTags[tagID]  + " has " + numCurr + " attachments, but in total it has " + numTot);
  if (numTot > numCurr) {
    return true;
  }
  return false;
}

function hasChildrenNow (tagID) {
  ans = 0;
    var group2 = vis_edges.get({
    filter: function (item) {
      if (item.from == tagID) {
        ans++;
      }
      return (item.from == tagID);
    }
  });
  return (ans>0);
}

//network.focusOnNode(getID("fleek"));
//nodes.on()
  // add event listener for selection, make charts now. 


  network.on('click', function(properties) {
      selectedTag = allTags[properties.nodes[0]];
      /* LOOK HERE. THIS IS WHERE YOU WOULD MAKE THE CHARTS. */
  });
  network.on('doubleClick', function(properties) {
    //console.log("picked  " + allTags[properties.nodes[0]])
    selNode = properties.nodes[0];
      /* LOOK HERE. USE THIS VARIABLE TO GET THE RIGHT/WRONG FOR EVERYONE. */
    if (allTags[selNode] == "fleek") {
      return 0;
    }

      if (stillHasChildren(selNode)) {
        //console.log(allTags[selNode] + " does have children, let's add them.");
        for (var i = 0; i < totalEdges.length; i++) {
          parentNode = totalEdges[i].from;
          childNode = totalEdges[i].to;
          //console.log(selNode + " " + parentNode)
          if (parentNode == selNode) {
            console.log(totalEdges[i]);
            if (vis_nodes.get(childNode) == undefined) {
              if (stillHasChildren(childNode)) {
                vis_nodes.add({id:childNode, label:allTags[childNode], group:"haschildren"});
                vis_edges.add(totalEdges[i]);
              }
              else {
                vis_nodes.add({id:childNode, label:allTags[childNode], group:"nochildren"});
                vis_edges.add(totalEdges[i]);
              }
              
            }
            else {
              vis_edges.add(totalEdges[i]);
            }
              vis_nodes.update({id:parentNode, label:allTags[[parentNode]], group:"nochildren"});
          }
        }
    }
    /*
    else {
      //console.log(allTags[selNode] + " doen't have children, doing a delete functoin instead.");
        for (var i = 0; i < currentEdges.length; i++) {
            parentNode = currentEdges[i].from;
            childNode = currentEdges[i].to;
            //console.log(selNode + " " + parentNode)
            if (parentNode == selNode) {
              if (hasChildrenNow(childNode) == false) {
                vis_nodes.remove(childNode);
                var connEdges = vis_edges.get({
                  filter: function (item) {
                    if (item.to == childNode) {
                       vis_edges.remove(item);
                    }
                    return (item.from == childNode);
                  }
                });
                console.log(connEdges);

              }
          }
      }
    }
    */

      selectedTag = allTags[properties.nodes[0]];
      //document.getElementById('info').innerHTML += 'selection: ' + selectedTag + '<br>';
      /* LOOK HERE. RETURN THESE WITH THE RIGHT/WRONG THINGEIES. */
  });


// Make a chart for the right/wrong for the user, and allj
