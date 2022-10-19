# Python Script, API Version = V21


# Parameter
xmaxBound = 4000
xminBound = -2000
ymaxBound = 5000
#yminBound = 0 (symmetry)
zmaxBound = 1200
zminBound = -1200

















###############################################
#create domain Box


# Insert From File
importOptions = ImportOptions.Create()
DocumentInsert.Execute(r"M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Geometry\candidate.step", importOptions, GetMaps("7294dcae"))
# EndBlock





#define new sketch
result = SketchHelper.StartConstraintSketching()
# EndBlock


# draw rectangle
point1 = Point2D.Create(MM(zmaxBound),MM(xminBound))
point2 = Point2D.Create(MM(zminBound),MM(xminBound))
point3 = Point2D.Create(MM(zminBound),MM(xmaxBound))
result = SketchRectangle.Create(point1, point2, point3)
# EndBlock



# Solidify Sketch
mode = InteractionMode.Solid
result = ViewHelper.SetViewMode(mode, None)
# EndBlock


# Extrude 1 Face
selection = FaceSelection.Create(GetRootPart().Bodies[0].Faces[0])
options = ExtrudeFaceOptions()
options.ExtrudeType = ExtrudeType.Add
result = ExtrudeFaces.Execute(selection, MM(ymaxBound), options)
# EndBlock















###############################################
#combine parts of aircraft goemetry

# Merge Bodies (Wing)
targets = BodySelection.Create([GetRootPart().Components[0].Components[0].Content.Bodies[0],
    GetRootPart().Components[0].Components[3].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock

# Merge Bodies (Fuselage)
targets = BodySelection.Create([GetRootPart().Components[0].Components[12].Content.Bodies[0],
    GetRootPart().Components[0].Components[9].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock

# Merge Bodies
targets = BodySelection.Create([GetRootPart().Components[0].Components[12].Content.Bodies[0],
    GetRootPart().Components[0].Components[4].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock

# Merge Bodies
targets = BodySelection.Create([GetRootPart().Components[0].Components[12].Content.Bodies[0],
    GetRootPart().Components[0].Components[1].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock

# Merge Bodies
targets = BodySelection.Create([GetRootPart().Components[0].Components[12].Content.Bodies[0],
    GetRootPart().Components[0].Components[6].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock

# Merge Bodies
targets = BodySelection.Create([GetRootPart().Components[0].Components[12].Content.Bodies[0],
    GetRootPart().Components[0].Components[7].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock

# Merge Bodies
targets = BodySelection.Create([GetRootPart().Components[0].Components[12].Content.Bodies[0],
    GetRootPart().Components[0].Components[5].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock

# Merge Bodies
targets = BodySelection.Create([GetRootPart().Components[0].Components[12].Content.Bodies[0],
    GetRootPart().Components[0].Components[10].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock

# Merge Bodies (Horizontal Stabilizer)
targets = BodySelection.Create([GetRootPart().Components[0].Components[8].Content.Bodies[0],
    GetRootPart().Components[0].Components[11].Content.Bodies[0]])
result = Combine.Merge(targets)
# EndBlock















# Intersect Bodies
targets = BodySelection.Create(GetRootPart().Bodies[0])
tools = BodySelection.Create(GetRootPart().Components[0].Components[12].Content.Bodies[0])
options = MakeSolidsOptions()
result = Combine.Intersect(targets, tools, options)
# EndBlock

# Delete Objects
selection = BodySelection.Create(GetRootPart().Bodies[1])
result = Combine.RemoveRegions(selection)
# EndBlock

# Intersect Bodies
targets = BodySelection.Create(GetRootPart().Bodies[0])
tools = BodySelection.Create(GetRootPart().Components[0].Components[0].Content.Bodies[0])
options = MakeSolidsOptions()
result = Combine.Intersect(targets, tools, options)
# EndBlock

# Delete Objects
selection = BodySelection.Create(GetRootPart().Bodies[1])
result = Combine.RemoveRegions(selection)
# EndBlock

# Intersect Bodies
targets = BodySelection.Create(GetRootPart().Bodies[0])
tools = BodySelection.Create(GetRootPart().Components[0].Components[8].Content.Bodies[0])
options = MakeSolidsOptions()
result = Combine.Intersect(targets, tools, options)
# EndBlock

# Delete Objects
selection = BodySelection.Create(GetRootPart().Bodies[1])
result = Combine.RemoveRegions(selection)
# EndBlock

# Intersect Bodies
targets = BodySelection.Create(GetRootPart().Bodies[0])
tools = BodySelection.Create(GetRootPart().Components[0].Components[2].Content.Bodies[0])
options = MakeSolidsOptions()
result = Combine.Intersect(targets, tools, options)
# EndBlock

# Delete Objects
selection = BodySelection.Create(GetRootPart().Bodies[1])
result = Combine.RemoveRegions(selection)
# EndBlock















###############################################

#create groups of domain surfaces

# Create Named Selection Group
primarySelection = FaceSelection.Create(GetRootPart().Bodies[0].Faces[2])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "inlet")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create([GetRootPart().Bodies[0].Faces[1],
    GetRootPart().Bodies[0].Faces[4],
    GetRootPart().Bodies[0].Faces[3]])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "sky")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create(GetRootPart().Bodies[0].Faces[27])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "symmetry")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create(GetRootPart().Bodies[0].Faces[0])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "outlet")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create([GetRootPart().Bodies[0].Faces[13],
    GetRootPart().Bodies[0].Faces[15],
    GetRootPart().Bodies[0].Faces[14],
    GetRootPart().Bodies[0].Faces[12]])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "wingSurf")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create(GetRootPart().Bodies[0].Faces[16])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "wingTip")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create([GetRootPart().Bodies[0].Faces[20],
    GetRootPart().Bodies[0].Faces[18]])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "horizontalStabSurf")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create(GetRootPart().Bodies[0].Faces[21])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "horizontalStabTip")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create(GetRootPart().Bodies[0].Faces[22])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "verticalStabSurf")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create(GetRootPart().Bodies[0].Faces[23])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "verticalStabTip")
# EndBlock

# Create Named Selection Group
primarySelection = FaceSelection.Create([GetRootPart().Bodies[0].Faces[11],
    GetRootPart().Bodies[0].Faces[10],
    GetRootPart().Bodies[0].Faces[9],
    GetRootPart().Bodies[0].Faces[8],
    GetRootPart().Bodies[0].Faces[17],
    GetRootPart().Bodies[0].Faces[7],
    GetRootPart().Bodies[0].Faces[6],
    GetRootPart().Bodies[0].Faces[25],
    GetRootPart().Bodies[0].Faces[26],
    GetRootPart().Bodies[0].Faces[5]])
secondarySelection = Selection.Empty()
result = NamedSelection.Create(primarySelection, secondarySelection)
# EndBlock

# Rename Named Selection
result = NamedSelection.Rename("Group1", "fuselage")
# EndBlock















###############################################
#prepare for export and save geometry file


# Exclude items from physics
selection = ComponentSelection.Create(GetRootPart().Components[0])
suppress = True
ViewHelper.SetSuppressForPhysics(selection, suppress)
# EndBlock

# Change Object Visibility
selection = BodySelection.Create(GetRootPart().Components[0].Components[0].Content.Bodies[0])
visibility = VisibilityType.Hide
inSelectedView = False
faceLevel = False
ViewHelper.SetObjectVisibility(selection, visibility, inSelectedView, faceLevel)
# EndBlock




# Save File
options = ExportOptions.Create()
DocumentSave.Execute(r"M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Geometry\flowDomain.scdoc", options)
# EndBlock

