import json

out_file = open("tagslist_with_keywords.json","w")
tagsList = [{"parentTags": ["geometry"],"tag": "3D Geometry"}
                ,{"parentTags": ["algebra"],"tag": "logarithms"}
                ,{"parentTags": ["proofs"],"tag": "proof by contradiction"}
                ,{"parentTags": ["quadrilaterals"],"tag": "kite"}
                ,{"parentTags": ["number theory"],"tag": "prime numbers"}
                ,{"parentTags": ["functions","polynomials"],"tag": "quartics"}
                ,{"parentTags": ["number theory"],"tag": "modular arithmetic"}
                ,{"parentTags": ["polynomials"],"tag": "roots"}
                ,{"parentTags": ["circle"],"tag": "power of a point"}
                ,{"parentTags": ["counting"],"tag": "PIE"}
                ,{"parentTags": ["polynomials"],"tag": "factoring"}
                ,{"parentTags": ["trigonometry"],"tag": "trigonometric identites"}
                ,{"parentTags": ["algebra","number theory"],"tag": "bases"}
                ,{"parentTags": ["triangle"],"tag": "pythagorean theorem"}
                ,{"parentTags": ["algebra"],"tag": "arithmetic sequences"}
                ,{"parentTags": ["polygons"],"tag": "pentagons"}
                ,{"parentTags": ["counting"],"tag": "combinations"}
                ,{"parentTags": ["counting"],"tag": "Venn Diagrams"}
                ,{"parentTags": ["equations","number theory"],"tag": "diophantine equations"}
                ,{"parentTags": ["trigonometry"],"tag": "cosine"}
                ,{"parentTags": ["trigonometry"],"tag": "law of sines"}
                ,{"parentTags": ["2D geometry"],"tag": "circle"}
                ,{"parentTags": ["functions"],"tag": "domain"}
                ,{"parentTags": ["3D Geometry"],"tag": "cones"}
                ,{"parentTags": ["trigonometric identites"],"tag": "trigonometry addition formula"}
                ,{"parentTags": ["3D Geometry"],"tag": "prisms"}
                ,{"parentTags": ["triangle"],"tag": "triangle centers"}
                ,{"parentTags": ["math"],"tag": "proofs"}
                ,{"parentTags": ["number theory"],"tag": "factors"}
                ,{"parentTags": ["math"],"tag": "algebra"}
                ,{"parentTags": ["polynomials","number theory"],"tag": "binomial theorem"}
                ,{"parentTags": ["quadrilaterals"],"tag": "squares"}
                ,{"parentTags": ["proofs"],"tag": "induction"}
                ,{"parentTags": ["probability","geometry"],"tag": "geometric probability"}
                ,{"parentTags": ["trigonometry"],"tag": "tangent"}
                ,{"parentTags": ["circle"],"tag": "incircle"}
                ,{"parentTags": ["trigonometry"],"tag": "sine"}
                ,{"parentTags": ["algebra"],"tag": "equations"}
                ,{"parentTags": ["3D Geometry"],"tag": "cubes"}
                ,{"parentTags": ["math"],"tag": "geometry"}
                ,{"parentTags": ["quadrilaterals"],"tag": "rhombus"}
                ,{"parentTags": ["3D Geometry"],"tag": "spheres"}
                ,{"parentTags": ["functions"],"tag": "range"}
                ,{"parentTags": ["geometry"],"tag": "2D geometry"}
                ,{"parentTags": ["triangle"],"tag": "similar triangles"}
                ,{"parentTags": ["quadrilaterals"],"tag": "cyclic quadrilaterals"}
                ,{"parentTags": ["combinatorics"],"tag": "probability"}
                ,{"parentTags": ["algebra"],"tag": "coordinates"}
                ,{"parentTags": ["polynomials"],"tag": "vieta's formulas"}
                ,{"parentTags": ["2D geometry"],"tag": "polygons"}
                ,{"parentTags": ["counting"],"tag": "complementary counting"}
                ,{"parentTags": ["geometry"],"tag": "area"}
                ,{"parentTags": ["math"],"tag": "combinatorics"}
                ,{"parentTags": ["equations"],"tag": "linear equations"}
                ,{"parentTags": ["functions","polynomials","equations"],"tag": "quadratic"}
                ,{"parentTags": ["algebra"],"tag": "geometric series"}
                ,{"parentTags": ["algebra"],"tag": "exponents"}
                ,{"parentTags": ["geometry"],"tag": "analytic geometry"}
                ,{"parentTags": ["geometry"],"tag": "congruence"}
                ,{"parentTags": ["modular arithmetic"],"tag": "chinese remainder theorem"}
                ,{"parentTags": ["counting"],"tag": "casework counting"}
                ,{"parentTags": ["geometry"],"tag": "angles"}
                ,{"parentTags": ["number theory"],"tag": "divisors"}
                ,{"parentTags": ["factors"],"tag": "number of divisors"}
                ,{"parentTags": ["math"],"tag": "number theory"}
                ,{"parentTags": ["trigonometry"],"tag": "law of cosines"}
                ,{"parentTags": ["functions"],"tag": "floor function"}
                ,{"parentTags": ["algebra"],"tag": "trigonometry"}
                ,{"parentTags": ["equations"],"tag": "proportions"}
                ,{"parentTags": ["counting"],"tag": "permutations"}
                ,{"parentTags": ["polygons"],"tag": "hexagons"}
                ,{"parentTags": ["circle"],"tag": "circumcircle"}
                ,{"parentTags": ["combinatorics"],"tag": "counting"}
                ,{"parentTags": ["polygons"],"tag": "triangle"}
                ,{"parentTags": ["bases"],"tag": "binary"}
                ,{"parentTags": ["algebra"],"tag": "functions"}
                ,{"parentTags": ["equations"],"tag": "recursion"}
                ,{"parentTags": ["recursion"],"tag": "fibnoacci numbers"}
                ,{"parentTags": ["functions","polynomials"],"tag": "cubics"}
                ,{"parentTags": ["polygons"],"tag": "quadrilaterals"}
                ,{"parentTags": ["counting"],"tag": "constructive counting"}
                ,{"parentTags": ["math"],"tag": "arithmetic"}
                ,{"parentTags": ["geometry"],"tag": "perimeter"}
                ,{"parentTags": ["modular arithmetic"],"tag": "remainders"}
                ,{"parentTags": ["circle"],"tag": "arcs"}
                ,{"parentTags": ["math"],"tag": "logic"}
                ,{"parentTags": ["algebra"],"tag": "polynomials"}
                ,{"parentTags": ["trigonometric identites"],"tag": "double angle formula"}
                ,{"parentTags": ["polygons"],"tag": "octagons"}
                ,{"parentTags": ["circle"],"tag": "sectors"}
                ,{"parentTags": ["circle"],"tag": "chords"}
                ,{"parentTags": ["factors"],"tag": "greatest common divisor"}
                ,{"parentTags": ["3D Geometry"],"tag": "pyramids"}
                ,{"parentTags": ["functions"],"tag": "ceiling function"}
                ]
alltags = []
out_file.write("[\n")
for x in tagsList:
	if x["tag"] not in alltags:
		alltags = alltags + [x["tag"]]
		data = {"tag":x["tag"], "keywords":[]}
		json.dump(data,out_file, indent=4, separators=(',', ': ')) 
		out_file.write(",\n")
	for y in x["parentTags"]:
		if y not in alltags:
			alltags = alltags + [y]
			data = {"tag":y, "keywords":[]}
			json.dump(data,out_file, indent=4, separators=(',', ': ')) 
			out_file.write(",\n")

for x in tagsList:
	for y in x["parentTags"]
		if y 

out_file.write("]\n")

