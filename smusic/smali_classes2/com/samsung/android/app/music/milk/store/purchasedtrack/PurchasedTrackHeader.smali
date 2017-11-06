.class public Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;
.super Ljava/lang/Object;
.source "PurchasedTrackHeader.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field private final mFragment:Landroid/app/Fragment;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/music/list/common/FilterOptionManager;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "filterOption"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;->mFragment:Landroid/app/Fragment;

    .line 26
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;->initLayout()V

    .line 30
    return-void
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;->mFilterOptionManager:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;->mRootView:Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public build()Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackHeader;->mRootView:Landroid/view/View;

    return-object v0
.end method
