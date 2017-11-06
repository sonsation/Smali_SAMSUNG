.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;
.source "FlatResizeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$DebugMatrixGenerator;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_TEXT_ALPHA:F = 0.5f

.field private static final DEBUG_TEXT_COLOR:I = -0xff0100

.field private static final DEBUG_VIEW:Z = false

.field private static final DEFAULT_ACCESSIBILITY_MODEL_ID:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-FlatResizeLayout"

.field public static final LOG_TAG_ACCESSIBILITY:Ljava/lang/String; = "SMUSIC-FlatResizeLayoutAccessibility"

.field private static final NOT_SELECTED_Z:F = 2000.0f

.field public static final NO_ACCESSIBILITY_SCROLL:Z = true

.field private static final SELECTED_Z:F = 2200.0f

.field private static final TEXT_VIEW_ID:I

.field private static final mPaint:Landroid/graphics/Paint;

.field private static final sFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;


# instance fields
.field private mAccessibilityLastSelectedId:I

.field private mAlbOpK:F

.field private mAlbTextOpK:F

.field private mAlbumSpacingK:F

.field private mAlbumVerticalDeltaK:F

.field private mAnimK:F

.field private mAnimLeft:I

.field private mAnimRight:I

.field private mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

.field private mCenterX:I

.field private mCenterY:I

.field private mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

.field private mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

.field private mDrawablesCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

.field private mHasTexts:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsPortrait:Z

.field private mLastModelHeight:F

.field private mLastModelWidth:F

.field private mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

.field private mMaxScrollingDistance:I

.field private mMaxSelectedDx:F

.field private mModelsVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

.field private volatile mNeedCopyToArray:Z

.field private final mRealignLock:Ljava/lang/Object;

.field private mRect:Landroid/graphics/Rect;

.field private volatile mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

.field private mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->sFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "parent"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    .line 107
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    .line 137
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAccessibilityLastSelectedId:I

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    .line 168
    new-instance v0, Landroid/util/LruCache;

    const/16 v3, 0x8

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mDrawablesCache:Landroid/util/LruCache;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRealignLock:Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "layout_inflater"

    .line 176
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 178
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView:[I

    .line 179
    invoke-virtual {v3, p2, v4, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->getTextLayoutId()I

    move-result v0

    if-eq v0, v5, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mIsPortrait:Z

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mScrollingFriction:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->setFriction(F)V

    .line 187
    return-void

    :cond_0
    move v0, v2

    .line 181
    goto :goto_0

    :cond_1
    move v1, v2

    .line 183
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAccessibilityLastSelectedId:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    .prologue
    .line 71
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    .prologue
    .line 71
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    return-object v0
.end method

.method private bindText(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V
    .locals 9
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .param p2, "adapterIndex"    # I

    .prologue
    const/4 v5, 0x0

    .line 991
    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    .line 992
    .local v2, "textModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->getView()Landroid/view/View;

    move-result-object v3

    .line 993
    .local v3, "textView":Landroid/view/View;
    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 994
    .local v1, "needView":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1006
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->getTextLayoutId()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1008
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1009
    .local v4, "width":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1010
    .local v0, "height":I
    invoke-virtual {v3, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1011
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 1017
    .end local v0    # "height":I
    .end local v4    # "width":I
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->bindView(Landroid/content/Context;ILandroid/view/View;)V

    .line 1020
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->bindToView(Landroid/view/View;)V

    .line 1021
    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setAdapterIndex(I)V

    .line 1022
    return-void

    .end local v1    # "needView":Z
    :cond_1
    move v1, v5

    .line 993
    goto :goto_0
.end method

.method private copyArtworksToArray()V
    .locals 5

    .prologue
    .line 909
    const/4 v0, 0x0

    .line 911
    .local v0, "i":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 912
    .local v2, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 913
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v2, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 916
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 917
    .restart local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 918
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-object v2, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 921
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 922
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    aput-object v3, v4, v0

    move v0, v1

    .line 924
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_4
    return-void
.end method

.method private copyChildsToArray()V
    .locals 6

    .prologue
    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "count":I
    const/4 v3, 0x0

    .line 929
    .local v3, "offset":I
    const/4 v1, 0x1

    .line 932
    .local v1, "filled":Z
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 933
    .local v2, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChildCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 934
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    array-length v5, v5

    if-lt v5, v0, :cond_0

    .line 935
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I

    move-result v3

    goto :goto_0

    .line 937
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 941
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_1
    if-nez v1, :cond_2

    .line 942
    new-array v4, v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .line 943
    const/4 v3, 0x0

    .line 944
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 945
    .restart local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I

    move-result v3

    .line 946
    goto :goto_1

    .line 949
    .end local v2    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 950
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 949
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 952
    :cond_3
    return-void
.end method

.method private getArtworkDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 350
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mDrawablesCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 351
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getCircleArtworkDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mDrawablesCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_0
    return-object v0
.end method

.method private getCircleArtworkDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 359
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V

    return-object v0
.end method

.method public static getFactory()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->sFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;

    return-object v0
.end method

.method private getSelectedAlbumHeight(F)F
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 633
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 636
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getSelectedAlbumWidth(F)F
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 625
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 628
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private handleOverScroll(FF)V
    .locals 0
    .param p1, "animationDelta"    # F
    .param p2, "limitDelta"    # F

    .prologue
    .line 474
    return-void
.end method

.method private invalidateAccessibilityView(II)V
    .locals 3
    .param p1, "accessibilityId"    # I
    .param p2, "action"    # I

    .prologue
    .line 661
    const-string v0, "SMUSIC-FlatResizeLayoutAccessibility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateVirtualView id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 664
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 665
    return-void
.end method

.method private limitScroll(F)F
    .locals 7
    .param p1, "dx"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 668
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v1

    .line 669
    .local v1, "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v2

    .line 670
    .local v2, "selectedX":F
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v3, v4

    .line 672
    .local v0, "maxDx":F
    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 673
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v3

    if-lez v3, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    int-to-float v3, v3

    .line 675
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 679
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    int-to-float v3, v3

    .line 680
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    goto :goto_0
.end method

.method private moveAccessibilityFocusTo(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)V
    .locals 0
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .param p2, "animationDelta"    # F

    .prologue
    .line 641
    return-void
.end method

.method private positionSelected(FZ)Z
    .locals 8
    .param p1, "animationDelta"    # F
    .param p2, "limited"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 477
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 478
    .local v2, "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v0

    .line 479
    .local v0, "originalSelection":I
    const/4 v3, 0x0

    .line 481
    .local v3, "tries":I
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->resizeToAnimationSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 482
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getModelsCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 484
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v6, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->updateSelectedAdapterIndex(Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 485
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    .line 486
    const/4 p2, 0x1

    .line 487
    const-string v4, "SMUSIC-FlatResizeLayout"

    const-string v6, "Unable to change selection"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getModelsCount()I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 495
    const-string v4, "SMUSIC-FlatResizeLayout"

    const-string v5, "Failed to position selected view"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move v1, v0

    .line 497
    .local v1, "safeNextSelection":I
    cmpl-float v4, p1, v7

    if-lez v4, :cond_4

    .line 498
    add-int/lit8 v1, v1, 0x1

    .line 502
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getAdapterWrap()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 503
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v5

    rem-int v1, v4, v5

    .line 511
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 512
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->stopAnimation()V

    .line 514
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->doRealign()V

    .line 518
    .end local v1    # "safeNextSelection":I
    :goto_4
    return p2

    .line 484
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 490
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    .line 491
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v2

    .end local v2    # "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 492
    .restart local v2    # "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    .restart local v1    # "safeNextSelection":I
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 505
    :cond_5
    if-gez v1, :cond_6

    .line 506
    const/4 v1, 0x0

    goto :goto_3

    .line 507
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v1, v4, :cond_1

    .line 508
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    goto :goto_3

    .line 516
    .end local v1    # "safeNextSelection":I
    :cond_7
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    goto :goto_4
.end method

.method private positionToLeft()V
    .locals 9

    .prologue
    .line 522
    const/4 v0, 0x1

    .line 523
    .local v0, "first":Z
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 524
    .local v2, "prevModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 525
    .local v1, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v5, v7

    .line 526
    .local v4, "x":F
    if-eqz v0, :cond_0

    .line 527
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v7, v5

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v5

    sub-float v5, v7, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 528
    .local v3, "selectedDelta":F
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    int-to-float v5, v5

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumSpacingK:F

    mul-float/2addr v7, v3

    add-float/2addr v5, v7

    sub-float/2addr v4, v5

    .line 532
    .end local v3    # "selectedDelta":F
    :goto_1
    const/4 v0, 0x0

    .line 533
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setX(F)V

    .line 534
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->resizeToAnimationSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)Z

    .line 535
    move-object v2, v1

    .line 536
    goto :goto_0

    .line 530
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_1

    .line 537
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .end local v4    # "x":F
    :cond_1
    return-void
.end method

.method private positionToRight()V
    .locals 9

    .prologue
    .line 540
    const/4 v0, 0x1

    .line 541
    .local v0, "first":Z
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 542
    .local v2, "prevModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 543
    .local v1, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v4, v5, v7

    .line 544
    .local v4, "x":F
    if-eqz v0, :cond_0

    .line 545
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v7, v5

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v5

    sub-float v5, v7, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 546
    .local v3, "selectedDelta":F
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    int-to-float v5, v5

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumSpacingK:F

    mul-float/2addr v7, v3

    add-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 550
    .end local v3    # "selectedDelta":F
    :goto_1
    const/4 v0, 0x0

    .line 551
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setX(F)V

    .line 552
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->resizeToAnimationSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)Z

    .line 553
    move-object v2, v1

    .line 554
    goto :goto_0

    .line 548
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    goto :goto_1

    .line 555
    .end local v1    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .end local v4    # "x":F
    :cond_1
    return-void
.end method

.method private resizeToAnimationSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)Z
    .locals 11
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .param p2, "animationDelta"    # F

    .prologue
    .line 558
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v7

    sub-float v6, v7, p2

    .line 559
    .local v6, "x":F
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setX(F)V

    .line 560
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimRight:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_2

    const/4 v2, 0x1

    .line 561
    .local v2, "needScale":Z
    :goto_0
    const/4 v1, 0x0

    .line 563
    .local v1, "animDelta":F
    if-eqz v2, :cond_4

    .line 565
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    .line 566
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v7, v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimK:F

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    int-to-float v9, v9

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    add-float v4, v7, v8

    .line 567
    .local v4, "size":F
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    int-to-float v7, v7

    sub-float v1, v6, v7

    .line 572
    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;F)V

    .line 573
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbOpK:F

    mul-float/2addr v7, v1

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v8, v8, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    add-float v0, v7, v8

    .line 574
    .local v0, "alpha":F
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumVerticalDeltaK:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 575
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumVerticalDeltaK:F

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setY(F)V

    .line 577
    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setAlpha(F)V

    .line 584
    .end local v0    # "alpha":F
    .end local v4    # "size":F
    :goto_2
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxSelectedDx:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5

    const/4 v3, 0x1

    .line 586
    .local v3, "selected":Z
    :goto_3
    if-eqz v3, :cond_6

    .line 587
    const v7, 0x45098000    # 2200.0f

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setZ(F)V

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->moveAccessibilityFocusTo(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)V

    .line 593
    :goto_4
    iget-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v7, :cond_1

    .line 594
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    .line 595
    .local v5, "textModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    if-eqz v3, :cond_7

    .line 596
    const v7, 0x45098000    # 2200.0f

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setZ(F)V

    .line 597
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v7, v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextSelectedOpacity:F

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setAlpha(F)V

    .line 608
    .end local v5    # "textModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    :cond_1
    :goto_5
    return v3

    .line 560
    .end local v1    # "animDelta":F
    .end local v2    # "needScale":Z
    .end local v3    # "selected":Z
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 569
    .restart local v1    # "animDelta":F
    .restart local v2    # "needScale":Z
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v7, v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimK:F

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimRight:I

    int-to-float v9, v9

    sub-float v9, v6, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    sub-float v4, v7, v8

    .line 570
    .restart local v4    # "size":F
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimRight:I

    int-to-float v7, v7

    sub-float v1, v7, v6

    goto :goto_1

    .line 579
    .end local v4    # "size":F
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v7, v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v7, v7

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;F)V

    .line 580
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v7, v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setAlpha(F)V

    .line 581
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v8, v8, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setY(F)V

    goto :goto_2

    .line 584
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 590
    .restart local v3    # "selected":Z
    :cond_6
    const/high16 v7, 0x44fa0000    # 2000.0f

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setZ(F)V

    goto :goto_4

    .line 599
    .restart local v5    # "textModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    :cond_7
    const/high16 v7, 0x44fa0000    # 2000.0f

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setZ(F)V

    .line 600
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbTextOpK:F

    mul-float/2addr v7, v1

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v8, v8, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextUnselectedOpacity:F

    add-float/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setAlpha(F)V

    goto :goto_5
.end method

.method private updateSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;F)V
    .locals 2
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .param p2, "height"    # F

    .prologue
    .line 612
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {p1, p2, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setSize(FF)V

    .line 622
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmapRatio()F

    move-result v0

    .line 616
    .local v0, "ratio":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 617
    mul-float v1, p2, v0

    invoke-virtual {p1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setSize(FF)V

    goto :goto_0

    .line 619
    :cond_1
    div-float v1, p2, v0

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setSize(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected applyScroll(FF)Z
    .locals 9
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 414
    move v0, p1

    .line 416
    .local v0, "animationDelta":F
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 418
    .local v3, "maxDelta":F
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v5

    if-ne v5, v2, :cond_6

    .line 419
    const/4 v3, 0x0

    .line 425
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v5, :cond_1

    .line 426
    const-string v5, "SMUSIC-FlatResizeLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleScroll delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxDelta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_7

    .line 431
    .local v2, "limited":Z
    :goto_1
    const/4 v1, 0x0

    .line 432
    .local v1, "limitDelta":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v3

    if-lez v5, :cond_2

    .line 433
    cmpg-float v5, v0, v8

    if-gez v5, :cond_8

    .line 434
    add-float v1, v0, v3

    .line 435
    neg-float v0, v3

    .line 442
    :cond_2
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->positionSelected(FZ)Z

    move-result v2

    .line 444
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->positionToRight()V

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->positionToLeft()V

    .line 448
    if-eqz v2, :cond_4

    .line 449
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->handleOverScroll(FF)V

    .line 450
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 451
    .local v4, "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    int-to-float v6, v6

    const v7, 0x45098000    # 2200.0f

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setPosition(FFF)V

    .line 453
    cmpl-float v5, p1, v8

    if-nez v5, :cond_3

    cmpl-float v5, p2, v8

    if-eqz v5, :cond_4

    .line 455
    :cond_3
    invoke-virtual {p0, v8, v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->applyScroll(FF)Z

    .line 458
    .end local v4    # "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_4
    sget-boolean v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v5, :cond_5

    .line 459
    const-string v5, "SMUSIC-FlatResizeLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleScroll end limited: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_5
    return v2

    .line 420
    .end local v1    # "limitDelta":F
    .end local v2    # "limited":Z
    :cond_6
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mWrapAdapter:Z

    if-nez v5, :cond_0

    .line 422
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->limitScroll(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    goto/16 :goto_0

    .line 429
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 437
    .restart local v1    # "limitDelta":F
    .restart local v2    # "limited":Z
    :cond_8
    sub-float v1, v0, v3

    .line 438
    move v0, v3

    goto :goto_2
.end method

.method public bitmapUpdated(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 11
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .prologue
    const/4 v10, 0x0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_2

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBiggestSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;F)V

    move-object v8, p1

    .line 287
    check-cast v8, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 288
    .local v8, "mm":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmapRatio()F

    move-result v9

    .line 293
    .local v9, "ratio":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-nez v0, :cond_1

    .line 314
    .end local v8    # "mm":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .end local v9    # "ratio":F
    :cond_0
    :goto_0
    return-void

    .line 298
    .restart local v8    # "mm":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .restart local v9    # "ratio":F
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getMarkerViewCount()I

    move-result v4

    .line 299
    .local v4, "markersCount":I
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v2

    .line 300
    invoke-virtual {v8, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getMarkers(I)[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    move-result-object v3

    invoke-direct {p0, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelectedAlbumWidth(F)F

    move-result v5

    .line 301
    invoke-direct {p0, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelectedAlbumHeight(F)F

    move-result v6

    .line 299
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->updateMarkerViews(Landroid/content/Context;I[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V

    .line 302
    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->reloadMarkers()V

    .line 304
    .end local v4    # "markersCount":I
    .end local v8    # "mm":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .end local v9    # "ratio":F
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAdapterIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    .line 307
    .local v7, "isSelectedModel":Z
    :goto_1
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedAdapterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getChildDelta(I)F

    move-result v0

    cmpl-float v0, v0, v10

    if-nez v0, :cond_0

    .line 308
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mLastModelWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mLastModelHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 309
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mLastModelWidth:F

    .line 310
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mLastModelHeight:F

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->fireOnSelectedAlbumSizeChanged()V

    goto :goto_0

    .line 304
    .end local v7    # "isSelectedModel":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method drawModel(Landroid/graphics/Canvas;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x437f0000    # 255.0f

    .line 317
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 318
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v8

    float-to-int v0, v5

    .line 319
    .local v0, "alpha":I
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 320
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->updateBoundsRect(Landroid/graphics/Rect;I)V

    .line 321
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 322
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 347
    .end local v0    # "alpha":I
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 325
    .restart local v0    # "alpha":I
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-boolean v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    if-eqz v5, :cond_3

    .line 326
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getArtworkDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 327
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v6, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    neg-int v6, v6

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v7, v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    neg-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 328
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 329
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 330
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 334
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 335
    invoke-virtual {p2, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v2

    .line 336
    .local v2, "c":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    if-eqz v2, :cond_2

    .line 337
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 339
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v5

    mul-float/2addr v5, v8

    float-to-int v0, v5

    .line 340
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 341
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->updateBoundsRect(Landroid/graphics/Rect;I)V

    .line 342
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 334
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 332
    .end local v2    # "c":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .end local v4    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getChildDelta(I)F
    .locals 7
    .param p1, "adapterPosition"    # I

    .prologue
    const/high16 v3, 0x7fc00000    # NaNf

    .line 192
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedAdapterIndex()I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 194
    .local v1, "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 244
    .end local v1    # "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_0
    :goto_0
    return v3

    .line 204
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimationIsNext:Z

    if-eqz v4, :cond_3

    .line 205
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 206
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 207
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto :goto_0

    .line 211
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 212
    .restart local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 213
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto :goto_0

    .line 221
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 222
    .restart local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v5

    if-ne v5, p1, :cond_6

    .line 223
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto/16 :goto_0

    .line 227
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 228
    .restart local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v5

    if-ne v5, p1, :cond_8

    .line 229
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto/16 :goto_0

    .line 232
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_9
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v4, :cond_0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 235
    .restart local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 240
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_a
    const-string v4, "SMUSIC-FlatResizeLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get child delta to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " loaded indexes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getConfig()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    return-object v0
.end method

.method public getExploreByTouchHelper(Landroid/view/View;)Landroid/support/v4/widget/ExploreByTouchHelper;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    return-object v0
.end method

.method public getMaxSelectedDelta()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxSelectedDx:F

    return v0
.end method

.method protected handleScroll(FF)Z
    .locals 8
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v4

    if-nez v4, :cond_1

    .line 367
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v4, :cond_0

    .line 368
    const-string v4, "SMUSIC-FlatResizeLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleScroll skipped dx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hasAdapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    :goto_0
    return v3

    .line 373
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 374
    :cond_2
    const-string v4, "SMUSIC-FlatResizeLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "long distance scroll ignored: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " distanceY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v3, 0x1

    goto :goto_0

    .line 378
    :cond_3
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v4, :cond_4

    .line 379
    const-string v4, "SMUSIC-FlatResizeLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleScroll dx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_4
    cmpl-float v4, p1, v7

    if-nez v4, :cond_5

    cmpl-float v4, p2, v7

    if-nez v4, :cond_5

    .line 384
    invoke-virtual {p0, v7, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->applyScroll(FF)Z

    goto :goto_0

    .line 388
    :cond_5
    const/4 v3, 0x0

    .line 391
    .local v3, "limited":Z
    const/4 v2, 0x1

    .line 392
    .local v2, "dir":I
    cmpg-float v4, p1, v7

    if-gez v4, :cond_6

    .line 393
    const/4 v2, -0x1

    .line 397
    :cond_6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 400
    .local v0, "absDx":F
    :goto_1
    cmpl-float v4, v0, v7

    if-lez v4, :cond_7

    if-nez v3, :cond_7

    .line 401
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxScrollingDistance:I

    int-to-float v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 402
    .local v1, "d":F
    int-to-float v4, v2

    mul-float/2addr v4, v1

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->applyScroll(FF)Z

    move-result v3

    .line 403
    sub-float/2addr v0, v1

    .line 404
    goto :goto_1

    .line 405
    .end local v1    # "d":F
    :cond_7
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v4, :cond_0

    .line 406
    const-string v4, "SMUSIC-FlatResizeLayout"

    const-string v5, "handleScroll end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1030
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;-><init>()V

    .line 1031
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-boolean v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setRectangular(Z)V

    .line 1032
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v2, :cond_1

    .line 1033
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;-><init>()V

    .line 1034
    .local v1, "textModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v2, :cond_0

    .line 1035
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V

    .line 1040
    :cond_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setVisibility(Z)V

    .line 1042
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setInheritAlpha(Z)V

    .line 1044
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    .line 1046
    .end local v1    # "textModel":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    iput-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mContentDescription:Ljava/lang/String;

    .line 1047
    return-object v0
.end method

.method protected bridge synthetic obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRealignLock:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mWidth:I

    if-ne v3, p2, :cond_0

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    if-ne v3, p3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAligned:Z

    if-nez v3, :cond_1

    .line 265
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mWidth:I

    .line 266
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    .line 267
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAligned:Z

    .line 268
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mWidth:I

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->realign(II)V

    .line 269
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAligned:Z

    .line 271
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    if-eqz v3, :cond_2

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->copyArtworksToArray()V

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->copyChildsToArray()V

    .line 275
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    .line 276
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    .line 277
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    invoke-virtual {p0, p1, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->drawModel(Landroid/graphics/Canvas;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    :cond_3
    monitor-exit v2

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 871
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRealignLock:Ljava/lang/Object;

    monitor-enter v1

    .line 872
    const/16 v0, 0x4100

    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 874
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModelsVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->bind()V

    .line 876
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->getMatrix()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->beginFrame([F)V

    .line 878
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    if-eqz v0, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->copyArtworksToArray()V

    .line 880
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->copyChildsToArray()V

    .line 882
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    .line 884
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->resetModified([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 885
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->resetModified([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 887
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModelsVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->getLength()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->renderBitmaps([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)V

    .line 888
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->hasShadow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 892
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 893
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->getMatrix()[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->render([F[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 895
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->bind()V

    .line 897
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindVertexAttribArrays()V

    .line 901
    :cond_1
    const/4 v0, 0x1

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 902
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->getLength()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->renderBitmaps([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)V

    .line 904
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 905
    monitor-exit v1

    .line 906
    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 810
    .local v6, "touchedX":F
    iget v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    int-to-float v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v7, v9, v10

    .line 811
    .local v7, "touchedY":F
    const/4 v5, 0x0

    .line 812
    .local v5, "touched":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    .line 813
    .local v8, "touchedZ":F
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 814
    .local v3, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    if-eqz v3, :cond_2

    .line 815
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v10

    if-ltz v10, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAlpha()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    const/4 v2, 0x1

    .line 816
    .local v2, "isVisible":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 817
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getHeight()F

    move-result v4

    .line 818
    .local v4, "modelHeight":F
    iget-boolean v10, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v10, :cond_1

    .line 819
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHeight()F

    move-result v10

    add-float/2addr v4, v10

    .line 821
    :cond_1
    if-eqz v2, :cond_3

    .line 822
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v10

    sub-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getWidth()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_3

    .line 823
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getY()F

    move-result v10

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v4, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    const/4 v1, 0x1

    .line 824
    .local v1, "isTouched":Z
    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getZ()F

    move-result v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_4

    const/4 v0, 0x1

    .line 825
    .local v0, "isTopMostSelected":Z
    :goto_3
    if-eqz v0, :cond_0

    .line 826
    move-object v5, v3

    .line 827
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getZ()F

    move-result v8

    goto :goto_0

    .line 815
    .end local v0    # "isTopMostSelected":Z
    .end local v1    # "isTouched":Z
    .end local v2    # "isVisible":Z
    .end local v4    # "modelHeight":F
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 823
    .restart local v2    # "isVisible":Z
    .restart local v4    # "modelHeight":F
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 824
    .restart local v1    # "isTouched":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 831
    .end local v1    # "isTouched":Z
    .end local v2    # "isVisible":Z
    .end local v3    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .end local v4    # "modelHeight":F
    :cond_5
    if-eqz v5, :cond_6

    .line 832
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnItemClick(I)V

    .line 834
    iget-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mSingleScroll:Z

    if-nez v9, :cond_6

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 835
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->animateToChild(I)V

    .line 838
    :cond_6
    const/4 v9, 0x1

    return v9
.end method

.method protected onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v10, 0x3

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v0, 0x3f000000    # 0.5f

    .line 843
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->getBackgroundColor()I

    move-result v8

    .line 845
    .local v8, "color":I
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    .line 846
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    .line 845
    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 848
    const/4 v9, 0x0

    .line 849
    .local v9, "defines":[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v1, :cond_0

    .line 850
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .end local v9    # "defines":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "MutableTextures"

    aput-object v2, v9, v1

    .line 852
    .restart local v9    # "defines":[Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    .line 853
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-boolean v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mUseCircle:Z

    if-eqz v1, :cond_1

    .line 854
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v6, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSegmentCount:I

    .line 855
    .local v6, "segmentCount":I
    const v4, 0x3fc90fdb

    const v5, 0x40fb53d1

    move v1, v0

    move v2, v0

    move v3, v0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleCoords(FFFFFFI)[F

    move-result-object v7

    .line 857
    .local v7, "circle":[F
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-direct {v0, v7, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModelsVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 858
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->TexturedRectangle:[F

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 863
    .end local v6    # "segmentCount":I
    .end local v7    # "circle":[F
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->initShader(Landroid/content/Context;)V

    .line 865
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 866
    const/16 v0, 0x203

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 867
    return-void

    .line 860
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->TexturedRectangle:[F

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModelsVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 861
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModelsVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    goto :goto_0
.end method

.method protected realign(II)V
    .locals 16
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 689
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x459c4000    # 5000.0f

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->setDistance(FF)V

    .line 690
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->setLookAt(FFF)V

    .line 691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x458ca000    # 4500.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->setPosition(FFF)V

    .line 692
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    const/4 v2, 0x0

    move/from16 v0, p1

    int-to-float v3, v0

    const/4 v4, 0x0

    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->setViewport(FFFF)V

    .line 701
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mSingleScroll:Z

    if-eqz v1, :cond_3

    .line 702
    const/4 v13, 0x3

    .line 713
    .local v13, "visibleCount":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v1

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 716
    const/4 v1, 0x2

    if-ne v13, v1, :cond_0

    .line 717
    const/4 v13, 0x3

    .line 720
    :cond_0
    div-int/lit8 v1, v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->setListParams(II)V

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v1, v1

    if-eq v1, v13, :cond_2

    .line 724
    :cond_1
    new-array v1, v13, [Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 727
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    .line 730
    div-int/lit8 v1, p1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    .line 731
    div-int/lit8 v1, p2, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    .line 734
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    add-int v9, v1, v2

    .line 736
    .local v9, "animWidth":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    sub-int/2addr v1, v9

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    .line 737
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    add-int/2addr v1, v9

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimRight:I

    .line 739
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v1, v2

    .line 740
    .local v8, "animDy":F
    int-to-float v1, v9

    div-float v1, v8, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimK:F

    .line 741
    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbOpK:F

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextSelectedOpacity:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextUnselectedOpacity:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbTextOpK:F

    .line 770
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, v9

    div-float v3, v8, v3

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxSelectedDx:F

    .line 775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxSelectedDx:F

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumSpacingK:F

    .line 777
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumVerticalDeltaK:F

    .line 779
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRealignLock:Ljava/lang/Object;

    monitor-enter v14

    .line 780
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 781
    .local v10, "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setY(F)V

    .line 782
    const/high16 v1, 0x44fa0000    # 2000.0f

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setZ(F)V

    .line 783
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setSize(FF)V

    .line 784
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setOriginalModelSize(I)V

    .line 785
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v10, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setAlpha(F)V

    .line 787
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getMarkerViewCount()I

    move-result v5

    .line 788
    .local v5, "markersCount":I
    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBitmapRatio()F

    move-result v11

    .line 789
    .local v11, "ratio":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v3

    .line 790
    invoke-virtual {v10, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getMarkers(I)[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelectedAlbumWidth(F)F

    move-result v6

    .line 791
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelectedAlbumHeight(F)F

    move-result v7

    .line 789
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->updateMarkerViews(Landroid/content/Context;I[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V

    .line 792
    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->reloadMarkers()V

    goto :goto_1

    .line 803
    .end local v5    # "markersCount":I
    .end local v10    # "m":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .end local v11    # "ratio":F
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 705
    .end local v8    # "animDy":F
    .end local v9    # "animWidth":I
    .end local v13    # "visibleCount":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mIsPortrait:Z

    if-eqz v1, :cond_4

    .line 706
    const/4 v13, 0x5

    .restart local v13    # "visibleCount":I
    goto/16 :goto_0

    .line 708
    .end local v13    # "visibleCount":I
    :cond_4
    const/4 v13, 0x7

    .restart local v13    # "visibleCount":I
    goto/16 :goto_0

    .line 795
    .restart local v8    # "animDy":F
    .restart local v9    # "animWidth":I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 796
    .local v12, "selected":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v2, v2

    invoke-virtual {v12, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setSize(FF)V

    .line 797
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    int-to-float v2, v2

    const v3, 0x45098000    # 2200.0f

    invoke-virtual {v12, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setPosition(FFF)V

    .line 799
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    div-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxScrollingDistance:I

    .line 802
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->handleScroll(FF)Z

    .line 803
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    return-void
.end method

.method protected recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;)V
    .locals 0
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .prologue
    .line 1052
    return-void
.end method

.method protected bridge synthetic recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;)V

    return-void
.end method

.method protected reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;IZ)V
    .locals 9
    .param p1, "model"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .param p2, "adapterIndex"    # I
    .param p3, "force"    # Z

    .prologue
    .line 956
    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v0, :cond_2

    .line 966
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->bindText(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getAlbArtUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    .line 969
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 976
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getMarkerViewCount()I

    move-result v4

    .line 977
    .local v4, "markersCount":I
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBitmapRatio()F

    move-result v7

    .line 978
    .local v7, "ratio":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 979
    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getMarkers(I)[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelectedAlbumWidth(F)F

    move-result v5

    .line 980
    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelectedAlbumHeight(F)F

    move-result v6

    move v2, p2

    .line 978
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->updateMarkerViews(Landroid/content/Context;I[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V

    .line 981
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->reloadMarkers()V

    .line 983
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setAdapterIndex(I)V

    .line 984
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapDimension:I

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 985
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToPublisher(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    goto :goto_0
.end method

.method protected bridge synthetic reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;IZ)V

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 1
    .param p1, "adapter"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;
    .param p2, "adapterPosition"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->resetMutableTexturesCache()V

    .line 469
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    .line 470
    return-void
.end method
