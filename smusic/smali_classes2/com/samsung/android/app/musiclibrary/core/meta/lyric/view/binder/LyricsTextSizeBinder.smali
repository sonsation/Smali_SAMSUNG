.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;
.super Ljava/lang/Object;
.source "LyricsTextSizeBinder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_SIZE_STATE:I = 0x1

.field private static final PREF_NAME:Ljava/lang/String; = "music_player_pref"

.field private static final PREF_TEXT_SIZE_STATE:Ljava/lang/String; = "text_size_state"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private mFromUser:Z

.field private final mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

.field private final mMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

.field private mOnTextMagnificationChangedListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

.field private mPixelLineSpacing:I

.field private mPixelTextSize:I

.field private final mResources:Landroid/content/res/Resources;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lyrics-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutResId"    # I

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p2

    .line 54
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    .line 56
    const-string v0, "music_player_pref"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->loadSetting()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->dispatchState(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->saveSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mOnTextMagnificationChangedListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mFromUser:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .prologue
    .line 25
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelTextSize:I

    return v0
.end method

.method private dispatchState(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 10
    .param p1, "state"    # Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    .prologue
    const/4 v9, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 129
    :cond_0
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->value:I

    .line 130
    .local v0, "arrResId":I
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 131
    .local v4, "resArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 132
    .local v2, "indexTextSize":I
    const/4 v1, 0x1

    .line 134
    .local v1, "indexLineSpacing":I
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    .line 135
    invoke-virtual {v4, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 136
    .local v6, "textSize":I
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    .line 137
    invoke-virtual {v4, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 138
    .local v3, "lineSpacing":I
    iget v5, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->id:I

    .line 140
    .local v5, "stateId":I
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onFontSizeChanged state-id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text-size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", line-spacing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, v6, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->dispatchTextSizeChanged(II)V

    .line 143
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private dispatchTextSizeChanged(II)V
    .locals 3
    .param p1, "pxTextSize"    # I
    .param p2, "pxLineSpacing"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelTextSize:I

    .line 148
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelLineSpacing:I

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 151
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->reHighlightLine(I)V

    .line 153
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 156
    .end local v0    # "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    :cond_0
    return-void
.end method

.method private loadSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mFromUser:Z

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "text_size_state"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, "sizeId":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->setState(I)V

    .line 117
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mFromUser:Z

    .line 118
    return-void
.end method

.method private saveSetting()V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "text_size_state"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getState()Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->id:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method


# virtual methods
.method public getChild()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder",
            "<+",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "byUser"    # Z

    .prologue
    .line 77
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton;->getState()Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->dispatchState(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    .line 79
    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p2, "holder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 93
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelLineSpacing:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    .line 96
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 95
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 98
    .local v1, "spacing":F
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    .line 99
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelLineSpacing:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 101
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 102
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    .end local v0    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "spacing":F
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "byUser"    # Z

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 84
    return-void
.end method

.method public setOnTextMagnificationChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mOnTextMagnificationChangedListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

    .line 109
    return-object p0
.end method
