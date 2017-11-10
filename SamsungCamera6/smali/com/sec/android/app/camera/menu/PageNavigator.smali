.class public Lcom/sec/android/app/camera/menu/PageNavigator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "PageNavigator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PageNavigator"


# instance fields
.field private final PAGE_NAVIGATOR_ITEM_PADDING:F

.field private final PAGE_NAVIGATOR_ITEM_SIZE:F

.field private mCurrentSelectPage:I

.field private mDefaultPage:I

.field private mPages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLButton;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingPage:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFILcom/samsung/android/glview/GLView$ClickListener;)V
    .locals 6

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0b0148

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->PAGE_NAVIGATOR_ITEM_SIZE:F

    const v0, 0x7f0b0147

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->PAGE_NAVIGATOR_ITEM_PADDING:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    iput p6, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mDefaultPage:I

    iput p6, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mCurrentSelectPage:I

    invoke-virtual {p0, p6, p7}, Lcom/sec/android/app/camera/menu/PageNavigator;->addPage(ILcom/samsung/android/glview/GLView$ClickListener;)V

    return-void
.end method

.method private refreshPosition()V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/PageNavigator;->getWidth()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->PAGE_NAVIGATOR_ITEM_SIZE:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->PAGE_NAVIGATOR_ITEM_PADDING:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    cmpg-float v5, v4, v8

    if-gez v5, :cond_1

    const-string v5, "PageNavigator"

    const-string v6, "The startPosX should be greater than zero."

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->PAGE_NAVIGATOR_ITEM_SIZE:F

    iget v6, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->PAGE_NAVIGATOR_ITEM_PADDING:F

    add-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-virtual {v0, v5, v8}, Lcom/samsung/android/glview/GLButton;->moveLayoutAbsolute(FF)V

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addPage(ILcom/samsung/android/glview/GLView$ClickListener;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "PageNavigator"

    const-string v2, "This page is added already."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget v4, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->PAGE_NAVIGATOR_ITEM_SIZE:F

    iget v5, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->PAGE_NAVIGATOR_ITEM_SIZE:F

    const v6, 0x7f02021e

    move v3, v2

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->addView(Lcom/samsung/android/glview/GLView;)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PageNavigator;->refreshPosition()V

    goto :goto_0
.end method

.method protected getCurrentSelectPage()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mCurrentSelectPage:I

    return v0
.end method

.method protected hidePage(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_1

    const-string v1, "PageNavigator"

    const-string v2, "don\'t hide page because page is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PageNavigator;->refreshPosition()V

    goto :goto_0
.end method

.method protected isDefaultPageSelected()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mDefaultPage:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mCurrentSelectPage:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowing(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_1

    const-string v2, "PageNavigator"

    const-string v3, "page is null."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onPageSelected(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getTag()I

    move-result v3

    if-ne v3, p1, :cond_1

    const-string v3, "PageNavigator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f02021f

    invoke-virtual {v0, v3, v6, v6, v6}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iput p1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mCurrentSelectPage:I

    goto :goto_1

    :cond_1
    const v3, 0x7f02021e

    invoke-virtual {v0, v3, v6, v6, v6}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected setTitle(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_1

    const-string v1, "PageNavigator"

    const-string v2, "don\'t set title because page is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showPage(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mPages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_1

    const-string v1, "PageNavigator"

    const-string v2, "don\'t show page because page is null."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->contains(Lcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->addView(Lcom/samsung/android/glview/GLView;)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/PageNavigator;->mShowingPage:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/PageNavigator;->refreshPosition()V

    goto :goto_0
.end method
