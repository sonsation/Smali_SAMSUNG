.class public Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;
.super Ljava/lang/Object;
.source "RadioPlayLimitHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RADIO_ENJOY"

.field private static final RADIO_PLAY_DURATION_DELIMITER:Ljava/lang/String; = " - "

.field private static final RADIO_PLAY_DURATION_FORMAT:Ljava/lang/String; = "yyyy.MM.dd"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mContext:Landroid/content/Context;

.field private mParentView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/View;

.field private mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mParentView:Landroid/view/ViewGroup;

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->initLayout()V

    .line 44
    return-void
.end method

.method private initLayout()V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019a

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mParentView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mRootView:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mRootView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->setDeviceName()V

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->setDuration()V

    .line 52
    return-void
.end method

.method private setDeviceName()V
    .locals 6

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    const v2, 0x7f0a0371

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    .line 61
    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method private setDuration()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x5

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 66
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 68
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string/jumbo v6, "yyyy.MM.dd"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "firstDate":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 71
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-string/jumbo v6, "yyyy.MM.dd"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "endDate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "duration":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    const v6, 0x7f0a036c

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    .line 74
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setRadioPlayInfo(Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v10, 0x7f0c0012

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->getBasicOffer()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->getBonusOffer()I

    move-result v4

    add-int v2, v3, v4

    .line 79
    .local v2, "totalOffer":I
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->getPlayCount()I

    move-result v1

    .line 80
    .local v1, "playCount":I
    if-le v1, v2, :cond_0

    .line 81
    const-string v3, "RADIO_ENJOY"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "radio play count exceeds its limit! played : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > total : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    move v1, v2

    .line 86
    :cond_0
    sub-int v0, v2, v1

    .line 88
    .local v0, "availableCount":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->getBasicOffer()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->getBasicOffer()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 89
    invoke-virtual {v4, v10, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->access$300(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 92
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->getBonusOffer()I

    move-result v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkradio/RadioPlayLimitInfo;->getBonusOffer()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 92
    invoke-virtual {v4, v10, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->access$400(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v10, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->access$500(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v10, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mViewHolder:Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->access$600(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 99
    invoke-virtual {v4, v10, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method
