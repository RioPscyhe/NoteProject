# Day 6 - Image and Assets (With Buttons & Icons)

Things I learned:
- Image - input by URL or by downloaded img
- Asset Folder Creation - Consists of the images the user downloads
- pubspec.yaml - consists of directories user will implement manually
- There are many types of buttons we can use 
- child inside a child is a widget inside a widget
- 

Widgets used: 
- image: AssetImage('asset/name')
- image: NetworkImage('linkhere')
- Image.asset('assets/namehere')
- Image.network('linkhere')
- child: Icon()
- 

Code: 
child Icon(
    Icons.icon_name,
    colors: Colors.lightBlue[600],
    size: 50.0,
)

child: RaisedButton( (Can also be FlatButton to remove shadow)
    onPressed: (){
        print('you clicked me');
    },
    child: Text('Click me'),
    colors: Color.lightblue,
)

child: RaiseButton.icon(
    onPressed: (){},
    icon: Icon(
        Icons.mail
    ),
    label: Text('mail me'),
    color: Colors.amber,
)

child: IconButton(
    onPressed: (){
        print('you clicked me again');
    },
    icon: Icons(Icons.alternate_email),
    color: Colors.amber,
)