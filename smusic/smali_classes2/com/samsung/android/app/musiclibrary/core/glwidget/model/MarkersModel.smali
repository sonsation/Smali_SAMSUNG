.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;
.source "MarkersModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;
    }
.end annotation


# instance fields
.field private mMarkerChildIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

.field private mNeedReload:Z

.field private mOriginalModelSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    return-void
.end method

.method private injectOriginalModelSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->getMatrixGenerator()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;

    .line 67
    .local v0, "mg":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mOriginalModelSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;->setOriginalModelSize(F)V

    .line 68
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mOriginalModelSize:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setOriginalModelSize(I)V

    .line 69
    return-void
.end method

.method private reloadMarkerModel(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 72
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    .line 73
    .local v2, "marker":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    aget-object v1, v5, p1

    .line 74
    .local v1, "info":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;
    iget v3, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->x:F

    .line 75
    .local v3, "x":F
    iget v4, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->y:F

    .line 76
    .local v4, "y":F
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 77
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setVisibility(Z)V

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setSize(FF)V

    .line 83
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setVisibility(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setPosition(FFF)V

    .line 85
    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->contentDescription:Ljava/lang/String;

    iput-object v5, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->mContentDescription:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChildCount()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getMarkers(I)[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 27
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mNeedReload:Z

    .line 28
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    array-length v2, v2

    if-ge v2, p1, :cond_2

    .line 29
    :cond_0
    new-array v2, p1, [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 31
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;-><init>()V

    aput-object v3, v2, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 35
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;-><init>()V

    .line 37
    .local v1, "marker":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setInheritAlpha(Z)V

    .line 38
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel$MarkerMatrix;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V

    .line 39
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->injectOriginalModelSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;)V

    .line 40
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "i":I
    .end local v1    # "marker":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    :cond_2
    move v0, p1

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 45
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setVisibility(Z)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 48
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_4

    .line 49
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    aget-object v2, v2, v0

    iput-object v5, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 50
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    aget-object v2, v2, v0

    iput-object v5, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;->contentDescription:Ljava/lang/String;

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 52
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkersInfo:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    return-object v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reloadMarkers()V
    .locals 3

    .prologue
    .line 56
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mNeedReload:Z

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "childIndex":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->reloadMarkerModel(I)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mNeedReload:Z

    .line 63
    .end local v0    # "childCount":I
    .end local v1    # "childIndex":I
    :cond_1
    return-void
.end method

.method public bridge synthetic setChild(ILcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildsModel;->setChild(ILcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    move-result v0

    return v0
.end method

.method public setOriginalModelSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mOriginalModelSize:I

    .line 21
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mMarkerChildIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22
    .local v0, "childId":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->injectOriginalModelSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;)V

    goto :goto_0

    .line 24
    .end local v0    # "childId":I
    :cond_0
    return-void
.end method
