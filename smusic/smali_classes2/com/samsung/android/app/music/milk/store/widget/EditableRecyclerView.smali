.class public Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;
.super Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
.source "EditableRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mIthCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mReorderListener:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mIthCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mReorderListener:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mContext:Landroid/content/Context;

    .line 116
    new-instance v5, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mIthCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-direct {v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 117
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v5, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 119
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mVibrator:Landroid/os/Vibrator;

    .line 121
    sget-object v5, Lcom/samsung/android/app/music/R$styleable;->MilkRecyclerListView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 123
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 124
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 125
    .local v1, "attr":I
    if-nez v1, :cond_0

    .line 126
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 127
    .local v2, "bottomPadding":I
    sget-object v5, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[init] bottomPadding - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v5, Lcom/samsung/android/app/music/milk/store/widget/EndLineSpacingDecoration;

    invoke-direct {v5, v2}, Lcom/samsung/android/app/music/milk/store/widget/EndLineSpacingDecoration;-><init>(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 123
    .end local v2    # "bottomPadding":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "attr":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    return-void
.end method


# virtual methods
.method public newLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 138
    if-eqz p1, :cond_0

    .line 139
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;

    .end local p1    # "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/milk/store/widget/IEditableAdapter;->setParent(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;)V

    .line 141
    :cond_0
    return-void
.end method

.method public setOnReorderListener(Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mReorderListener:Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView$IReorderListener;

    .line 145
    return-void
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/EditableRecyclerView;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 151
    :cond_0
    return-void
.end method
