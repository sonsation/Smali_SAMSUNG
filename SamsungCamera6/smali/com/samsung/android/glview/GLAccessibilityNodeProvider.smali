.class public Lcom/samsung/android/glview/GLAccessibilityNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "GLAccessibilityNodeProvider.java"


# instance fields
.field private mGLContext:Lcom/samsung/android/glview/GLContext;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mListChildViewNode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/opengl/GLSurfaceView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iput-object v0, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iput-object v0, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iput-object p2, p0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 17

    const/4 v8, 0x0

    const/4 v15, -0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-static {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v15, v9}, Landroid/opengl/GLSurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/opengl/GLSurfaceView;->setImportantForAccessibility(I)V

    const-string v15, "HOST_VIEW"

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v7

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->getDimensionByOrientation(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityNode(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/samsung/android/glview/GLViewGroup;->addAccessibilityBaseViewNode(Ljava/util/ArrayList;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v16, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/samsung/android/glview/GLViewGroup;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v8

    :cond_2
    if-nez v8, :cond_4

    const/4 v9, 0x0

    :cond_3
    :goto_1
    return-object v9

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v16

    invoke-static/range {v15 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v15, v9}, Landroid/opengl/GLSurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v15, 0x2

    new-array v10, v15, [I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v15, v10}, Landroid/opengl/GLSurfaceView;->getLocationInWindow([I)V

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v15

    if-eqz v15, :cond_5

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    iput v15, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    iput v15, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->right:I

    iput v15, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    iput v15, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->getDimensionByOrientation(ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v12

    invoke-virtual {v9, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const-string v13, ""

    invoke-virtual {v9, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    if-eqz v14, :cond_7

    const-string v15, "GLList"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "GLGridList"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    move-object v4, v8

    check-cast v4, Lcom/samsung/android/glview/GLAbsList;

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLAbsList;->isScrollable()Z

    move-result v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLAbsList;->getScrollOrientation()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    const-string v13, ":SCROLL_PORTRAIT"

    :cond_7
    :goto_2
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getContentDescription()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getContentDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getObjectTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->isClickable()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getBypassTouch()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    if-nez v15, :cond_9

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/glview/GLViewGroup;->addAccessibilityChildViewNode(Ljava/util/ArrayList;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLView;->getParentId()I

    move-result v15

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v15}, Lcom/samsung/android/glview/GLView;->getId()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    const-string v13, ":SCROLL_LANDSCAPE"

    goto/16 :goto_2

    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/glview/GLView;->getObjectTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_3

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLAccessibilityNodeProvider;->mListChildViewNode:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public getDimensionByOrientation(ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    packed-switch p1, :pswitch_data_0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-object v0

    :pswitch_0
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_1
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_2
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
