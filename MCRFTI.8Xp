:"MinecrafTI by kelograph
:"BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB3333BBBBBBBBBBB355553BBBBBBBBB35555553BBBBBBB3555555553BBBBBB3355555533BBBBBB3735555373BBBBBB3773333773BBBBBB3777737773BBBBBB3777737773BBBBBBB37773773BBBBBBBBB377373BBBBBBBBBBB3333BBBBBBBBBBBBBBBBBBBBBB
Lbl S
0->Y
0->X
0->D
1->M
0->Xmin
0->Ymin
264->Xmax
164->Ymax
AxesOff
PlotsOff 
FnOff 
GridOff
BackgroundOff
ClrDraw
ClrHome
Lbl M
1->M
6->dim(|LITMS
If |LITMS(1)!=0 or |LITMS(2)!=0 or |LITMS(3)!=0 or |LITMS(4)!=0 or |LITMS(5)!=0 or |LITMS(6)!=0
Then
	Menu("Save detected","Create new",N,"Load",LD,"Code",CD,"Controls",CT,"Exit",EX)
Else
	Menu("No save variable","Create new",N,"Code",CD,"Controls",CT,"Exit",EX)
End
Lbl CT
ClrHome
Disp " "
Output(1,9,"Controls")
Disp "Arrow keys -\> move
Disp "Numpad -\> break/place
Disp "[y=][wndw] -\> cycle block
Disp "[2nd] -\> break mode
Disp "[alph\a] -\> place mode
Disp "[mode] -\> save
Disp " "
Disp "[enter] to return
Pause 
ClrHome
Goto M
Lbl CD
While 1
	Disp "0 -\> go back
	Disp "1 -\> delete vars
	Input "Code:",Y
	ClrHome
	If Y=0
	Goto M
	If Y=1
	Then
		DelVar [C]
		DelVar |LITMS
		DelVar [D]
		DelVar |LCHNK
	End
	0->Y
End
Lbl N
{0,0,0,0,1,1}->|LITMS
2->dim(|LCHNK
If |LCHNK(1)=0
Then
	1->|LCHNK(1)
	0->|LCHNK(2)
End
1->|LCHNK(1)
0->|LCHNK(2)
Lbl NW
If |LCHNK(1)=2 and |LCHNK(2)=0
1->|LCHNK(2)
If |LCHNK(1)=1
Then
	{9,18}->dim([C]
	Fill(0,[C]
End
If |LCHNK(1)=2
Then
	{9,18}->dim([D]
	Fill(0,[D]
End
1->F
ClrHome
Disp "Generating...
If |LCHNK(1)=1
Disp "CHUNK 1
If |LCHNK(1)=2
Disp "CHUNK 2
Disp " "
Disp " "
Disp "Tip:
Disp "Break won't save
For(L,9,1,~1
	For(G,1,18
		If |LCHNK(1)=1
		F->[C](L,G)
		If |LCHNK(1)=2
		F->[D](L,G)
	End
	If L=9
	1->F
	If L=8
	2->F
	If L<=7
	0->F
End
"TREE
randInt(2,16)->F
If |LCHNK(1)=1
Then
	3->[C](6,F)
	3->[C](5,F)
	4->[C](4,F+1)
	4->[C](4,F-1)
	4->[C](4,F)
	4->[C](3,F)
End
If |LCHNK(1)=2
Then
	3->[D](6,F)
	3->[D](5,F)
	4->[D](4,F+1)
	4->[D](4,F-1)
	4->[D](4,F)
	4->[D](3,F)
End
Lbl LD
ClrDraw
TextColor(12
If |LCHNK(1)=1
Text(7,210,"Chnk 1
If |LCHNK(1)=2
Text(7,210,"Chnk 2
9->L
0->P
Horizontal 140,12
While 1
	If M=1
	Then
		1->G
		0->J
		0->C
		~8->A
		9->L
		While L>=1
			If L=9
			7->B
			If L=8
			22->B
			If L=7
			37->B
			If L=6
			52->B
			If L=5
			67->B
			If L=4
			82->B
			If L=3
			97->B
			If L=2
			112->B
			If L=1
			127->B
			For(J,1,18,1
				If |LCHNK(1)=1
				[C](L,J)->C
				If |LCHNK(1)=2
				[D](L,J)->C
				A+15->A
				If T=1
				Goto PL
				If C=0
				Then
				End
				If C=1
				Then
					"1 LAYER
					Pt-On(A+6,B+6,1,21)
					Pt-On(A+3,B+6,1,21)
					Pt-On(A,B+6,1,23)
					Pt-On(A-3,B+6,1,23)
					Pt-On(A-6,B+6,1,23)
					"2 LAYER
					Pt-On(A+6,B+3,1,21)
					Pt-On(A+3,B+3,1,21)
					Pt-On(A,B+3,1,21)
					Pt-On(A-3,B+3,1,21)
					Pt-On(A-6,B+3,1,21)
					"3 LAYER
					Pt-On(A+6,B,1,23)
					Pt-On(A+3,B,1,23)
					Pt-On(A,B,1,21)
					Pt-On(A-3,B,1,21)
					Pt-On(A-6,B,1,21)
					"4 LAYER
					Pt-On(A+6,B-3,1,21)
					Pt-On(A+3,B-3,1,21)
					Pt-On(A,B-3,1,21)
					Pt-On(A-3,B-3,1,21)
					Pt-On(A-6,B-3,1,21)
					"5 LAYER
					Pt-On(A+6,B-6,1,21)
					Pt-On(A+3,B-6,1,23)
					Pt-On(A,B-6,1,23)
					Pt-On(A-3,B-6,1,21)
					Pt-On(A-6,B-6,1,21)
				End
				If C=2
				Then
					"1 LAYER
					Pt-On(A+6,B+6,1,14)
					Pt-On(A+3,B+6,1,14)
					Pt-On(A,B+6,1,14)
					Pt-On(A-3,B+6,1,14)
					Pt-On(A-6,B+6,1,14)
					"2 LAYER
					Pt-On(A+6,B+3,1,14)
					Pt-On(A+3,B+3,1,16)
					Pt-On(A,B+3,1,16)
					Pt-On(A-3,B+3,1,14)
					Pt-On(A-6,B+3,1,16)
					"3 LAYER
					Pt-On(A+6,B,1,16)
					Pt-On(A+3,B,1,22)
					Pt-On(A,B,1,16)
					Pt-On(A-3,B,1,16)
					Pt-On(A-6,B,1,16)
					"4 LAYER
					Pt-On(A+6,B-3,1,16)
					Pt-On(A+3,B-3,1,16)
					Pt-On(A,B-3,1,16)
					Pt-On(A-3,B-3,1,16)
					Pt-On(A-6,B-3,1,22)
					"5 LAYER
					Pt-On(A+6,B-6,1,16)
					Pt-On(A+3,B-6,1,16)
					Pt-On(A,B-6,1,22)
					Pt-On(A-3,B-6,1,16)
					Pt-On(A-6,B-6,1,16)
				End
				If C=3
				Then
					"1 LAYER
					Pt-On(A+6,B+6,1,16)
					Pt-On(A+3,B+6,1,16)
					Pt-On(A,B+6,1,12)
					Pt-On(A-3,B+6,1,16)
					Pt-On(A-6,B+6,1,12)
					"2 LAYER
					Pt-On(A+6,B+3,1,16)
					Pt-On(A+3,B+3,1,16)
					Pt-On(A,B+3,1,12)
					Pt-On(A-3,B+3,1,16)
					Pt-On(A-6,B+3,1,12)
					"3 LAYER
					Pt-On(A+6,B,1,16)
					Pt-On(A+3,B,1,12)
					Pt-On(A,B,1,16)
					Pt-On(A-3,B,1,16)
					Pt-On(A-6,B,1,12)
					"4 LAYER
					Pt-On(A+6,B-3,1,16)
					Pt-On(A+3,B-3,1,12)
					Pt-On(A,B-3,1,16)
					Pt-On(A-3,B-3,1,12)
					Pt-On(A-6,B-3,1,16)
					"5 LAYER
					Pt-On(A+6,B-6,1,12)
					Pt-On(A+3,B-6,1,16)
					Pt-On(A,B-6,1,16)
					Pt-On(A-3,B-6,1,12)
					Pt-On(A-6,B-6,1,16)
				End
				If C=4
				Then
					"1 LAYER
					Pt-On(A+6,B+6,1,14)
					Pt-On(A+3,B+6,1,12)
					Pt-On(A,B+6,1,14)
					Pt-On(A-3,B+6,1,14)
					Pt-On(A-6,B+6,1,12)
					"2 LAYER
					Pt-On(A+6,B+3,1,14)
					Pt-On(A+3,B+3,1,14)
					Pt-On(A,B+3,1,12)
					Pt-On(A-3,B+3,1,12)
					Pt-On(A-6,B+3,1,14)
					"3 LAYER
					Pt-On(A+6,B,1,14)
					Pt-On(A+3,B,1,14)
					Pt-On(A,B,1,14)
					Pt-On(A-3,B,1,14)
					Pt-On(A-6,B,1,14)
					"4 LAYER
					Pt-On(A+6,B-3,1,12)
					Pt-On(A+3,B-3,1,12)
					Pt-On(A,B-3,1,14)
					Pt-On(A-3,B-3,1,14)
					Pt-On(A-6,B-3,1,12)
					"5 LAYER
					Pt-On(A+6,B-6,1,14)
					Pt-On(A+3,B-6,1,14)
					Pt-On(A,B-6,1,12)
					Pt-On(A-3,B-6,1,12)
					Pt-On(A-6,B-6,1,14)
				End
			End
			0->J
			L-1->L
			~8->A
		End
		Lbl PL
		10->Q
		0->G
		1->Y
		1->X
		~10->W
		~10->Z
		1->C
		0->R
		0->S
		0->T
		0->M
		|LITMS(5)->X
		|LITMS(6)->Y
		34->K
	End
	((X*15)-8)->A
	TextColor(12)
	If M=2
	Text(7,100,"[place]
	If M=0
	Text(7,100,"[break]
	While K
		If K=26 and X=17 and |LCHNK(1)=1
		Then
			2->|LCHNK(1)
			1->|LITMS(5)
			Y->|LITMS(6)
			1->M
			If |LCHNK(2)=1
			Then
				Goto LD
			Else
				Goto NW
			End
		End
		If K=24 and |LCHNK(1)=2 and X=1
		Then
			1->|LCHNK(1)
			17->|LITMS(5)
			Y->|LITMS(6)
			1->M
			Goto LD
		End
		If K=22
		Then
			X->|LITMS(5)
			Y->|LITMS(6)
			ClrHome
			ClrDraw
			Goto M
		End
		If K=31
		Then
			2->M
		End
		If K=21
		Then
			0->M
		End
		If Y!=9
		Then
			If |LCHNK(1)=1
			Then
				If [C](Y+1,X)=0
				Then
					34->K
				End
			End
			If |LCHNK(1)=2
			Then
				If [D](Y+1,X)=0
				Then
					34->K
				End
			End
		End
		If K=93 and Y!=9
		Then
			If M!=2
			Then
				If |LCHNK(1)=1
				Then
					If [C](Y+1,X)!=0
					Then
						1->R
						If [C](Y+1,X)=1
						|LITMS(1)+1->|LITMS(1)
						If [C](Y+1,X)=2
						|LITMS(2)+1->|LITMS(2)
						If [C](Y+1,X)=3
						|LITMS(3)+1->|LITMS(3)
						If [C](Y+1,X)=4
						|LITMS(4)+1->|LITMS(4)
						0->[C](Y+1,X)
					End
				End
				If |LCHNK(1)=2
				Then
					If [D](Y+1,X)!=0
					Then
						1->R
						If [D](Y+1,X)=1
						|LITMS(1)+1->|LITMS(1)
						If [D](Y+1,X)=2
						|LITMS(2)+1->|LITMS(2)
						If [D](Y+1,X)=3
						|LITMS(3)+1->|LITMS(3)
						If [D](Y+1,X)=4
						|LITMS(4)+1->|LITMS(4)
						0->[D](Y+1,X)
					End
				End
			Else
				If M=2
				Then
					If |LCHNK(1)=1
					Then
						If [C](Y+1,X)=0
						1->R
					End
					If |LCHNK(1)=2
					Then
						If [D](Y+1,X)=0
						1->R
					End
				End
			End
		End
		
		If K=73 and Y!=1
		Then
			If M!=2
			Then
				If |LCHNK(1)=1
				Then
					If [C](Y-1,X)!=0
					Then
						2->R
						If [C](Y-1,X)=1
						|LITMS(1)+1->|LITMS(1)
						If [C](Y-1,X)=2
						|LITMS(2)+1->|LITMS(2)
						If [C](Y-1,X)=3
						|LITMS(3)+1->|LITMS(3)
						If [C](Y-1,X)=4
						|LITMS(4)+1->|LITMS(4)
						0->[C](Y-1,X)
					End
				End
				If |LCHNK(1)=2
				Then
					If [D](Y-1,X)!=0
					Then
						2->R
						If [D](Y-1,X)=1
						|LITMS(1)+1->|LITMS(1)
						If [D](Y-1,X)=2
						|LITMS(2)+1->|LITMS(2)
						If [D](Y-1,X)=3
						|LITMS(3)+1->|LITMS(3)
						If [D](Y-1,X)=4
						|LITMS(4)+1->|LITMS(4)
						0->[C](Y-1,X)
					End
				End
			Else
				If M=2
				Then
					If |LCHNK(1)=1
					Then
						If [C](Y-1,X)=0
						2->R
					End
					If |LCHNK(1)=2
					Then
						If [D](Y-1,X)=0
						2->R
					End
				End
			End
		End
		
		If K=82 and X!=1
		Then
			If M!=2
			Then
				If |LCHNK(1)=1
				Then
					If [C](Y,X-1)!=0
					Then
						3->R
						If [C](Y,X-1)=1
						|LITMS(1)+1->|LITMS(1)
						If [C](Y,X-1)=2
						|LITMS(2)+1->|LITMS(2)
						If [C](Y,X-1)=3
						|LITMS(3)+1->|LITMS(3)
						If [C](Y,X-1)=4
						|LITMS(4)+1->|LITMS(4)
						0->[C](Y,X-1)
					End
				End
				If |LCHNK(1)=2
				Then
					If [D](Y,X-1)!=0
					Then
						3->R
						If [D](Y,X-1)=1
						|LITMS(1)+1->|LITMS(1)
						If [D](Y,X-1)=2
						|LITMS(2)+1->|LITMS(2)
						If [D](Y,X-1)=3
						|LITMS(3)+1->|LITMS(3)
						If [D](Y,X-1)=4
						|LITMS(4)+1->|LITMS(4)
						0->[D](Y,X-1)
					End
				End
			Else
				If M=2
				Then
					If |LCHNK(1)=1
					Then
						If [C](Y,X-1)=0
						3->R
					End
					If |LCHNK(1)=2
					Then
						If [D](Y,X-1)=0
						3->R
					End
				End
			End
		End
		
		If K=84 and X!=17
		Then
			If M!=2
			Then
				If |LCHNK(1)=1
				Then
					If [C](Y,X+1)!=0
					Then
						4->R
						If [C](Y,X+1)=1
						|LITMS(1)+1->|LITMS(1)
						If [C](Y,X+1)=2
						|LITMS(2)+1->|LITMS(2)
						If [C](Y,X+1)=3
						|LITMS(3)+1->|LITMS(3)
						If [C](Y,X+1)=4
						|LITMS(4)+1->|LITMS(4)
						0->[C](Y,X+1)
					End
				End
				If |LCHNK(1)=2
				Then
					If [D](Y,X+1)!=0
					Then
						4->R
						If [D](Y,X+1)=1
						|LITMS(1)+1->|LITMS(1)
						If [D](Y,X+1)=2
						|LITMS(2)+1->|LITMS(2)
						If [D](Y,X+1)=3
						|LITMS(3)+1->|LITMS(3)
						If [D](Y,X+1)=4
						|LITMS(4)+1->|LITMS(4)
						0->[D](Y,X+1)
					End
				End
			Else
				If M=2
				Then
					If |LCHNK(1)=1
					Then
						If [C](Y,X+1)=0
						4->R
					End
					If |LCHNK(1)=2
					Then
						If [D](Y,X+1)=0
						4->R
					End
				End
			End
		End
		
		If R=1
		Then
			A->S
			B-15->T
			If M!=2
			1->R
		End
		If R=2
		Then
			A->S
			B+15->T
			If M!=2
			1->R
		End
		If R=3
		Then
			A-15->S
			B->T
			If M!=2
			1->R
		End
		If R=4
		Then
			A+15->S
			B->T
			If M!=2
			1->R
		End
		
		If R=1
		Then
			If M!=2
			Then
				0->R
				Pt-Off(S+6,T+6,1)
				Pt-Off(S+3,T+6,1)
				Pt-Off(S,T+6,1)
				Pt-Off(S-3,T+6,1)
				Pt-Off(S-6,T+6,1)
				Pt-Off(S+6,T+3,1)
				Pt-Off(S+3,T+3,1)
				Pt-Off(S,T+3,1)
				Pt-Off(S-3,T+3,1)
				Pt-Off(S-6,T+3,1)
				Pt-Off(S+6,T,1)
				Pt-Off(S+3,T,1)
				Pt-Off(S,T,1)
				Pt-Off(S-3,T,1)
				Pt-Off(S-6,T,1)
				Pt-Off(S+6,T-3,1)
				Pt-Off(S+3,T-3,1)
				Pt-Off(S,T-3,1)
				Pt-Off(S-3,T-3,1)
				Pt-Off(S-6,T-3,1)
				Pt-Off(S+6,T-6,1)
				Pt-Off(S+3,T-6,1)
				Pt-Off(S,T-6,1)
				Pt-Off(S-3,T-6,1)
				Pt-Off(S-6,T-6,1)
			End
		End
		If K=24
		Then
			If X!=1
			Then
				If |LCHNK(1)=1
				Then
					If [C](Y,X-1)=0
					Then
						X-1->X
						A->W
						B->Z
					Else
						If Y!=1
						Then
							If [C](Y-1,X-1)=0
							Then
								Y-1->Y
								X-1->X
								A->W
								B->Z
							End
						End
					End
				End
				If |LCHNK(1)=2
				Then
					If [D](Y,X-1)=0
					Then
						X-1->X
						A->W
						B->Z
					Else
						If Y!=1
						Then
							If [D](Y-1,X-1)=0
							Then
								Y-1->Y
								X-1->X
								A->W
								B->Z
							End
						End
					End
				End
			End
		End
		If K=25
		Then
			If Y!=1
			Then
				If |LCHNK(1)=1
				Then
					If [C](Y-1,X)=0
					Then
						Y-1->Y
						A->W
						B->Z
					End
				End
				If |LCHNK(1)=2
				Then
					If [D](Y-1,X)=0
					Then
						Y-1->Y
						A->W
						B->Z
					End
				End
			End
		End
		If K=26
		Then
			If X!=17
			Then
				If |LCHNK(1)=1
				Then
					If [C](Y,X+1)=0
					Then
						X+1->X
						A->W
						B->Z
					Else
						If Y!=1
						Then
							If [C](Y-1,X+1)=0
							Then
								X+1->X
								Y-1->Y
								A->W
								B->Z
							End
						End
					End
				End
				If |LCHNK(1)=2
				Then
					If [D](Y,X+1)=0
					Then
						X+1->X
						A->W
						B->Z
					Else
						If Y!=1
						Then
							If [D](Y-1,X+1)=0
							Then
								X+1->X
								Y-1->Y
								A->W
								B->Z
							End
						End
					End
				End
			End
		End
		If K=34
		Then
			If Y!=9
			Then
				If |LCHNK(1)=1
				Then
					If [C](Y+1,X)=0
					Then
						Y+1->Y
						A->W
						B->Z
					End
				End
				If |LCHNK(1)=2
				Then
					If [D](Y+1,X)=0
					Then
						Y+1->Y
						A->W
						B->Z
					End
				End
			End
		End
		((X*15)-8)->A
		If Y=9
		7->B
		If Y=8
		22->B
		If Y=7
		37->B
		If Y=6
		52->B
		If Y=5
		67->B
		If Y=4
		82->B
		If Y=3
		97->B
		If Y=2
		112->B
		If Y=1
		127->B
		If K=11
		Then
			If C!=1
			C-1->C
		End
		If K=12
		Then
			If C!=4
			C+1->C
		End
		If K=24 or K=25 or K=26 or K=34
		Then
			Pt-On(A+6,B+6,1,18)
			Pt-On(A+3,B+6,1,18)
			Pt-On(A,B+6,1,18)
			Pt-On(A-3,B+6,1,18)
			Pt-On(A-6,B+6,1,18)
			Pt-On(A+6,B+3,1,18)
			Pt-On(A+3,B+3,1,18)
			Pt-On(A,B+3,1,18)
			Pt-On(A-3,B+3,1,18)
			Pt-On(A-6,B+3,1,18)
			Pt-On(A+6,B,1,18)
			Pt-On(A+3,B,1,18)
			Pt-On(A,B,1,18)
			Pt-On(A-3,B,1,18)
			Pt-On(A-6,B,1,18)
			Pt-On(A+6,B-3,1,18)
			Pt-On(A+3,B-3,1,18)
			Pt-On(A,B-3,1,18)
			Pt-On(A-3,B-3,1,18)
			Pt-On(A-6,B-3,1,18)
			Pt-On(A+6,B-6,1,18)
			Pt-On(A+3,B-6,1,18)
			Pt-On(A,B-6,1,18)
			Pt-On(A-3,B-6,1,18)
			Pt-On(A-6,B-6,1,18)
			
			Pt-Off(W+6,Z+6,1)
			Pt-Off(W+3,Z+6,1)
			Pt-Off(W,Z+6,1)
			Pt-Off(W-3,Z+6,1)
			Pt-Off(W-6,Z+6,1)
			Pt-Off(W+6,Z+3,1)
			Pt-Off(W+3,Z+3,1)
			Pt-Off(W,Z+3,1)
			Pt-Off(W-3,Z+3,1)
			Pt-Off(W-6,Z+3,1)
			Pt-Off(W+6,Z,1)
			Pt-Off(W+3,Z,1)
			Pt-Off(W,Z,1)
			Pt-Off(W-3,Z,1)
			Pt-Off(W-6,Z,1)
			Pt-Off(W+6,Z-3,1)
			Pt-Off(W+3,Z-3,1)
			Pt-Off(W,Z-3,1)
			Pt-Off(W-3,Z-3,1)
			Pt-Off(W-6,Z-3,1)
			Pt-Off(W+6,Z-6,1)
			Pt-Off(W+3,Z-6,1)
			Pt-Off(W,Z-6,1)
			Pt-Off(W-3,Z-6,1)
			Pt-Off(W-6,Z-6,1)
		End
		getKey->K
	End
	1->K
	
	If R>0
	Then
		If M=2
		Then
			If C=1
			Then
				If |LITMS(1)>0
				Then
					|LITMS(1)-1->|LITMS(1)
					Pt-On(S+6,T+6,1,21)
					Pt-On(S+3,T+6,1,21)
					Pt-On(S,T+6,1,23)
					Pt-On(S-3,T+6,1,23)
					Pt-On(S-6,T+6,1,23)
					Pt-On(S+6,T+3,1,21)
					Pt-On(S+3,T+3,1,21)
					Pt-On(S,T+3,1,21)
					Pt-On(S-3,T+3,1,21)
					Pt-On(S-6,T+3,1,21)
					Pt-On(S+6,T,1,23)
					Pt-On(S+3,T,1,23)
					Pt-On(S,T,1,21)
					Pt-On(S-3,T,1,21)
					Pt-On(S-6,T,1,21)
					Pt-On(S+6,T-3,1,21)
					Pt-On(S+3,T-3,1,21)
					Pt-On(S,T-3,1,21)
					Pt-On(S-3,T-3,1,21)
					Pt-On(S-6,T-3,1,21)
					Pt-On(S+6,T-6,1,21)
					Pt-On(S+3,T-6,1,23)
					Pt-On(S,T-6,1,23)
					Pt-On(S-3,T-6,1,21)
					Pt-On(S-6,T-6,1,21)
					If |LCHNK(1)=1
					Then
						If R=1
						C->[C](Y+1,X)
						If R=2
						C->[C](Y-1,X)
						If R=3
						C->[C](Y,X-1)
						If R=4
						C->[C](Y,X+1)
					End
					If |LCHNK(1)=2
					Then
						If R=1
						C->[D](Y+1,X)
						If R=2
						C->[D](Y-1,X)
						If R=3
						C->[D](Y,X-1)
						If R=4
						C->[D](Y,X+1)
					End
				End
			End
			If C=2
			Then
				If |LITMS(2)>0
				Then
					|LITMS(2)-1->|LITMS(2)
					Pt-On(S+6,T+6,1,14)
					Pt-On(S+3,T+6,1,14)
					Pt-On(S,T+6,1,14)
					Pt-On(S-3,T+6,1,14)
					Pt-On(S-6,T+6,1,14)
					Pt-On(S+6,T+3,1,14)
					Pt-On(S+3,T+3,1,16)
					Pt-On(S,T+3,1,16)
					Pt-On(S-3,T+3,1,14)
					Pt-On(S-6,T+3,1,16)
					Pt-On(S+6,T,1,16)
					Pt-On(S+3,T,1,22)
					Pt-On(S,T,1,16)
					Pt-On(S-3,T,1,16)
					Pt-On(S-6,T,1,16)
					Pt-On(S+6,T-3,1,16)
					Pt-On(S+3,T-3,1,16)
					Pt-On(S,T-3,1,16)
					Pt-On(S-3,T-3,1,16)
					Pt-On(S-6,T-3,1,22)
					Pt-On(S+6,T-6,1,16)
					Pt-On(S+3,T-6,1,16)
					Pt-On(S,T-6,1,22)
					Pt-On(S-3,T-6,1,16)
					Pt-On(S-6,T-6,1,16)
					If |LCHNK(1)=1
					Then
						If R=1
						C->[C](Y+1,X)
						If R=2
						C->[C](Y-1,X)
						If R=3
						C->[C](Y,X-1)
						If R=4
						C->[C](Y,X+1)
					End
					If |LCHNK(1)=2
					Then
						If R=1
						C->[D](Y+1,X)
						If R=2
						C->[D](Y-1,X)
						If R=3
						C->[D](Y,X-1)
						If R=4
						C->[D](Y,X+1)
					End
				End
			End
			If C=3
			Then
				If |LITMS(3)>0
				Then
					|LITMS(3)-1->|LITMS(3)
					Pt-On(S+6,T+6,1,16)
					Pt-On(S+3,T+6,1,16)
					Pt-On(S,T+6,1,12)
					Pt-On(S-3,T+6,1,16)
					Pt-On(S-6,T+6,1,12)
					Pt-On(S+6,T+3,1,16)
					Pt-On(S+3,T+3,1,16)
					Pt-On(S,T+3,1,12)
					Pt-On(S-3,T+3,1,16)
					Pt-On(S-6,T+3,1,12)
					Pt-On(S+6,T,1,16)
					Pt-On(S+3,T,1,12)
					Pt-On(S,T,1,16)
					Pt-On(S-3,T,1,16)
					Pt-On(S-6,T,1,12)
					Pt-On(S+6,T-3,1,16)
					Pt-On(S+3,T-3,1,12)
					Pt-On(S,T-3,1,16)
					Pt-On(S-3,T-3,1,12)
					Pt-On(S-6,T-3,1,16)
					Pt-On(S+6,T-6,1,12)
					Pt-On(S+3,T-6,1,16)
					Pt-On(S,T-6,1,16)
					Pt-On(S-3,T-6,1,12)
					Pt-On(S-6,T-6,1,16)
					If |LCHNK(1)=1
					Then
						If R=1
						C->[C](Y+1,X)
						If R=2
						C->[C](Y-1,X)
						If R=3
						C->[C](Y,X-1)
						If R=4
						C->[C](Y,X+1)
					End
					If |LCHNK(1)=2
					Then
						If R=1
						C->[D](Y+1,X)
						If R=2
						C->[D](Y-1,X)
						If R=3
						C->[D](Y,X-1)
						If R=4
						C->[D](Y,X+1)
					End
				End
			End
			If C=4
			Then
				If |LITMS(4)>0
				Then
					|LITMS(4)-1->|LITMS(4)
					Pt-On(S+6,T+6,1,14)
					Pt-On(S+3,T+6,1,12)
					Pt-On(S,T+6,1,14)
					Pt-On(S-3,T+6,1,14)
					Pt-On(S-6,T+6,1,12)
					Pt-On(S+6,T+3,1,14)
					Pt-On(S+3,T+3,1,14)
					Pt-On(S,T+3,1,12)
					Pt-On(S-3,T+3,1,12)
					Pt-On(S-6,T+3,1,14)
					Pt-On(S+6,T,1,14)
					Pt-On(S+3,T,1,14)
					Pt-On(S,T,1,14)
					Pt-On(S-3,T,1,14)
					Pt-On(S-6,T,1,14)
					Pt-On(S+6,T-3,1,12)
					Pt-On(S+3,T-3,1,12)
					Pt-On(S,T-3,1,14)
					Pt-On(S-3,T-3,1,14)
					Pt-On(S-6,T-3,1,12)
					Pt-On(S+6,T-6,1,14)
					Pt-On(S+3,T-6,1,14)
					Pt-On(S,T-6,1,12)
					Pt-On(S-3,T-6,1,12)
					Pt-On(S-6,T-6,1,14)
					If |LCHNK(1)=1
					Then
						If R=1
						C->[C](Y+1,X)
						If R=2
						C->[C](Y-1,X)
						If R=3
						C->[C](Y,X-1)
						If R=4
						C->[C](Y,X+1)
					End
					If |LCHNK(1)=2
					Then
						If R=1
						C->[D](Y+1,X)
						If R=2
						C->[D](Y-1,X)
						If R=3
						C->[D](Y,X-1)
						If R=4
						C->[D](Y,X+1)
					End
				End
			End
		End
	End
	If C=2
	Then
		TextColor(14)
		Text(7,20,|LITMS(2))
		Pt-On(10,154,1,14)
		Pt-On(13,154,1,14)
		Pt-On(10,152,1,16)
		Pt-On(13,152,1,16)
	End
	If C=1
	Then
		TextColor(22)
		Text(7,20,|LITMS(1))
		Pt-On(10,154,1,22)
		Pt-On(13,154,1,22)
		Pt-On(10,152,1,22)
		Pt-On(13,152,1,22)
	End
	If C=3
	Then
		TextColor(16)
		Text(7,20,|LITMS(3))
		Pt-On(10,154,1,16)
		Pt-On(13,154,1,16)
		Pt-On(10,152,1,16)
		Pt-On(13,152,1,16)
	End
	If C=4
	Then
		TextColor(14)
		Text(7,20,|LITMS(4))
		Pt-On(10,154,1,14)
		Pt-On(13,154,1,14)
		Pt-On(10,152,1,14)
		Pt-On(13,152,1,14)
	End
	0->R
End
Lbl EX
Disp " "
