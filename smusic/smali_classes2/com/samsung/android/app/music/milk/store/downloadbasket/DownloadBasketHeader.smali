.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
.super Ljava/lang/Object;
.source "DownloadBasketHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;,
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    }
.end annotation


# instance fields
.field private mHeaderWrapper:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f0

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->mRootView:Landroid/view/View;

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->mRootView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->mHeaderWrapper:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    .line 27
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local p1    # "activity":Landroid/app/Activity;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;)V

    .line 29
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->mHeaderWrapper:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    return-object v0
.end method


# virtual methods
.method public getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->mHeaderWrapper:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public updateValue(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "frameNum"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->mHeaderWrapper:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 48
    return-void
.end method
