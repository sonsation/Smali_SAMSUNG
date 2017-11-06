.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
.super Ljava/lang/Object;
.source "DownloadBasketHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

.field private mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    .line 57
    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;-><init>(Landroid/app/Activity;)V

    .line 97
    .local v0, "header":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->apply(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;)V

    .line 98
    return-object v0
.end method

.method public setFirstRowFrame1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame1Label:Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame1Value:Ljava/lang/CharSequence;

    .line 62
    return-object p0
.end method

.method public setFirstRowFrame2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame2Label:Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame2Value:Ljava/lang/CharSequence;

    .line 68
    return-object p0
.end method

.method public setFirstRowFrame3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame3Label:Ljava/lang/CharSequence;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame3Value:Ljava/lang/CharSequence;

    .line 74
    return-object p0
.end method

.method public setFirstRowFrame3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;F)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "sizePx"    # F

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame3Label:Ljava/lang/CharSequence;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame3Value:Ljava/lang/CharSequence;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput p3, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mFirstFrame3ValueSize:F

    .line 81
    return-object p0
.end method

.method public setOnSecondLable2ClickListener(Landroid/view/View$OnClickListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mSecondLabel2ClickListener:Landroid/view/View$OnClickListener;

    .line 92
    return-object p0
.end method

.method public setSecondRow(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    .locals 1
    .param p1, "label1"    # Ljava/lang/CharSequence;
    .param p2, "label2"    # Ljava/lang/CharSequence;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p1, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mSecondLabel1:Ljava/lang/CharSequence;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->P:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;

    iput-object p2, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$HeaderParams;->mSecondLabel2:Ljava/lang/CharSequence;

    .line 87
    return-object p0
.end method
