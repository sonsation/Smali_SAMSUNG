.class public Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;
.super Ljava/lang/Object;
.source "DownloadQueueHeaderBuilder.java"


# instance fields
.field private button:Landroid/widget/TextView;

.field private mClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mRootView:Landroid/view/View;

.field private textview1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "clickListener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mFragment:Landroid/app/Fragment;

    .line 37
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->initLayout()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400e0

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mRootView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mRootView:Landroid/view/View;

    const v1, 0x7f1202a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->textview1:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mRootView:Landroid/view/View;

    const v1, 0x7f120221

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->button:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->button:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public build()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setButtonView(I)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->button:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const v0, 0x7f0a02c2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 75
    return-object p0

    .line 73
    :cond_0
    const v0, 0x7f0a02c0

    goto :goto_0
.end method

.method public setTextView(II)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;
    .locals 5
    .param p1, "downloading"    # I
    .param p2, "total"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->textview1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02c1

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 65
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-object p0
.end method
