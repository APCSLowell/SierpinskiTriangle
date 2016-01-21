Sierpinski Triangle
==================

The Sierpinski Triangle is a fractal. According to [Wikipedia](http://en.wikipedia.org/wiki/Sierpinski_triangle) it was named after "mathematician Waclaw Sierpinski who described it in 1915. However, similar patterns appear already in the 13th-century Cosmati mosaics in the cathedral of Anagni, Italy." You can create the Sierpinski Triangle (and very similar fractals) with surprisingly little code. The following picture and instructions are also from Wikipedia.

![Alt text](http://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Sierpinski_triangle_evolution.svg/512px-Sierpinski_triangle_evolution.svg.png)

Start with any triangle, though the usual Sierpinski triangle uses an equilateral triangle. Shrink the triangle to ½ height and ½ width, make three copies, and position the three shrunken triangles so that each triangle touches the two other triangles at a corner (image 2). Note the emergence of the central hole - because the three shrunken triangles can between them cover only 3/4 of the area of the original. (Holes are an important feature of Sierpinski's triangle.) Repeat step 2 with each of the smaller triangles (image 3 and so on).

Suggested steps to complete this assignment:
----------------------------------------------
1. You may find slides #1 - 39 of the [Recursion powerpoint](https://drive.google.com/open?id=0Bz2ZkT6qWPYTdFNMNkthaG15X1k) and  the [Recursion 1 worksheet](https://drive.google.com/open?id=0Bz2ZkT6qWPYTN2U4M2E5ZTQtMGFhMC00ZDY0LThiMGItODMwYzBiMGFiODdi) helpful.
2. Fork and clone down this repository (Optional: Create your own repository from scratch. Look at the bottom of this page for instructions)
2. Write the `sierpinski` function:

    * If `len` is greater than 20 (or some variable) 
        * recursively call the `sierpinksi` function to draw a triangle with the left corner at (`x`,`y`) and a base and height equal to `len/2`.
        * Again, call the `sierpinksi` function a second time to draw another triangle a distance of `len/2` to the right of the first triangle.
        * Now, call the `sierpinksi` function a third time to draw a triangle a distance of `len/4` to the right and `len/2` up from the first triangle. This triangle should "sit on top" of the first two.
    * else
        * Draw a triangle with the left corner at (`x`,`y`) and a base and height equal to `len`.
3. Once you have the `sierpinksi` function completed, call it once in `draw()` to start the process. You can change the number and size of the triangles by changing the limit in the `if` from 20 to some variable and adjusting the value of the variable. One way to make the program interactive is to use `mouseDragged` to change the limit.
4. Feel free to create your own inidividual variation of the Sierpinski triangle. [Your recursive triangle doesn't have to look like any other](http://www.google.com/search?q=variations+on+a+theme+of+sierpinski&safe=active&es_sm=122&source=lnms&tbm=isch&sa=X&ei=Ku-uVP7vEJecoQSvwoCADg&ved=0CAoQ_AUoAw&biw=1280&bih=856&surl=1#safe=active&tbm=isch&q=variations+on+sierpinski+triangle&imgdii=_). The mathematically adventurous might want to check out [the sierpinski triangle page to end most sierpinski triangle pages ™](http://www.oftenpaper.net/sierpinski.htm).
5. You could also create a [Sierpinski carpet](http://en.wikipedia.org/wiki/Sierpinski_carpet) as an alternative to the Sierpinski Triangle.

Optional: Create your own repository from scratch
-------------------------------------------------
It's not hard to create your own repostiory.    
1. Create a folder called SierpinskiTriangle in your apjava folder.    
2. Copy `processing.js` from a previous assignment and move it to the SierpinskiTriangle folder (Or, better practice, [download](http://processingjs.org/download/) the latest development version)    
3. Use Sublime to create the following 3 files, all of which are stored in the SierpinskiTriangle folder. Choose New File and then Save As and give the file the correct name    
    * `SierpinskiTriangle.pde`    
    * `index.html` (can be copied from a previous assignment, you will just need to change the canvas id tag in the body to match the name `SierpinskiTriangle`)    
    * `styles.css` (can be copied from a previous assignment)    
4. Now, go to GitHub and create a new empty SierpinskiTriangle repository. GitHub will provide the commands that you use to link your local SierpinskiTriangle folder to the GitHub repository    
5. To display your program on the web, you will want to create a new `gh-pages` branch. Then, go to the GitHub settings and make `gh-pages` the default branch    

Samples of Student Work
-----------------------
[Rowan](http://rocassius.github.io/SierpinskiTriangle/)   
[Ethan](http://emdarcher.github.io/SierpinskiTriangle/)  
[Sasha](http://sashagonzalez.github.io/SierpinskiTriangle/)  
[Celena](http://celenac.github.io/SierpinskiTriangle/)  
[Aaron](http://aaronchowapcs.github.io/SierpinskiTriangle/)  
[Gideon](http://giteon.github.io/SierpinskiTriangle/)  
[Luis](http://lmaragon.github.io/SierpinskiTriangle/)  
[David](http://goliathuros.github.io/SierpinskiTriangle/)  
[Antonio](http://adcarmona.github.io/SierpinskiTriangle/)  
[Michel](http://lubaruja.github.io/SierpinskiTriangle/)   
[Kristen](http://kris-10.github.io/SierpinskiTriangle/)   
[Neil](http://neilwong.github.io/SierpinskiTriangle/)   
[Erika](http://bekutaa.github.io/SierpinskiTriangle/)  
[Annie](http://anxie.github.io/SierpinskiTriangle/)  
[Zachary](http://zachooz.github.io/SierpinskiTriangle/)  
[Chris](http://chrisma1.github.io/SierpinskiTriangle/)   
[Kenta](http://redtorch.github.io/SierpinskiTriangle/)   
[Yufan](http://yuxu1.github.io/SierpinskiTriangle/)   
[Philip](http://philiphuang2.github.io/SierpinskiTriangle/)  
[Lee](http://shleewhite.github.io/SierpinskiTriangle/)   
[Oliver](http://olivernoss.github.io/SierpinskiTriangle/)  
[Alex](http://alexsffeng.github.io/SierpinskiTriangle/)  

