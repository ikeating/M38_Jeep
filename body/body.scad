/*
    Isaiah Keating
*/

include </Users/isaiahkeating/Desktop/Cad/Round-Anything/polyround.scad>
/*
// polyRound example
radiiPoints=[
    [-4, 0,  1   ],
    [5,  3,  1.5 ],
    [0,  7,  0.1 ],
    [8,  7,  10  ],
    [20, 20, 0.8 ],
    [10, 0,  10  ]
];
linear_extrude(3)polygon(polyRound(radiiPoints,30));
*/
//*
// polyRoundExtrude example
radiiPoints=[
    [10, 0,  10 ],
    [20, 20, 1.1],
    [8,  7,  10 ],
    [0,  7,  0.3],
    [5,  3,  0.1],
    [-4, 0,  1  ]
];
polyRoundExtrude(radiiPoints,10,.5,-0.8,fn=20);
//*/
/*
// extrudeWithRadius example
radiiPoints=[
    [-4,  0,  1   ],
    [5,   3,  1.5 ],
    [0,   7,  0.1 ],
    [8,   7,  10  ],
    [20,  20, 0.8 ],
    [10,  0,  10  ]
];
extrudeWithRadius(3,0.5,0.5,5)polygon(polyRound(radiiPoints,30));
*/
module body()
    {


    }

body();
////////////////////////////////////////////////////////////