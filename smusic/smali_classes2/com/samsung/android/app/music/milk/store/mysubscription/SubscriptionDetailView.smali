.class public Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;
.super Landroid/widget/LinearLayout;
.source "SubscriptionDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionDetailView"


# instance fields
.field private button:Landroid/widget/TextView;

.field private downloadcount:Landroid/widget/TextView;

.field private listener:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

.field private price:Landroid/widget/TextView;

.field private status:Landroid/widget/TextView;

.field private streaming:Landroid/widget/TextView;

.field private term:Landroid/widget/TextView;

.field private term2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method private UpdateButton(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const v5, 0x7f12002f

    .line 188
    const-string v3, "orderStatus"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "orderStatus":Ljava/lang/String;
    const-string v3, "orderType"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "orderType":Ljava/lang/String;
    const-string v3, "orderStatusDetail"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "oder_detail":Ljava/lang/String;
    const-string v3, "02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    const-string v3, "SUB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "02"

    .line 194
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    const v4, 0x7f0a03e7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    const/4 v4, 0x2

    .line 197
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 196
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 211
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    const v4, 0x7f0a03e9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 200
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    const/4 v4, 0x1

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 200
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->listener:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

    goto :goto_0

    .line 208
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    const v4, 0x7f0a027b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;)Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->listener:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

    return-object v0
.end method

.method private changePriceFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "p"    # Ljava/lang/String;

    .prologue
    .line 214
    const-string v1, "%s%s%s"

    .line 216
    .local v1, "priceformat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.currency.sign"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "currency":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 218
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->StringToPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0a031f

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 217
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    const v0, 0x7f120130

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f1202e8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term2:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f120131

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f120141

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->downloadcount:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f12022c

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->status:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f12022d

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->price:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f120221

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method public setSubscriptionEventListener(Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->listener:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

    .line 180
    return-void
.end method

.method public updateSubscription(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const v12, 0x7f0a03f0

    const/4 v13, 0x0

    .line 70
    const-string v9, "SubscriptionDetailView"

    const-string/jumbo v10, "updateSubscription"

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v13}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    const-string v10, "productTitle"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    const-string v9, "02"

    const-string v10, "orderStatus"

    .line 86
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 90
    .local v0, "active":Z
    if-eqz v0, :cond_0

    .line 91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term:Landroid/widget/TextView;

    .line 92
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03f2

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":~"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "dueDateLocal"

    .line 94
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 93
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->changeDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "date":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term2:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    .end local v1    # "date":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03e4

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "strStreaming":Ljava/lang/String;
    const-string v9, "0"

    const-string/jumbo v10, "streamingCode"

    .line 117
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 116
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 119
    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 124
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a04ae

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "strMp3":Ljava/lang/String;
    const-string v9, "downloadMaxCount"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-gtz v9, :cond_2

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 130
    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->downloadcount:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0302

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "strStatus":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->status:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03e6

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 143
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->status:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->price:Landroid/widget/TextView;

    .line 151
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03ed

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "purchasedPrice"

    .line 153
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 152
    invoke-direct {p0, v10, v11}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->changePriceFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "strPrice":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->price:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const-string v9, "productId"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "productId":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->button:Landroid/widget/TextView;

    new-instance v10, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$1;

    invoke-direct {v10, p0, v4}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->UpdateButton(Landroid/database/Cursor;)V

    .line 176
    return-void

    .line 99
    .end local v4    # "productId":Ljava/lang/String;
    .end local v5    # "strMp3":Ljava/lang/String;
    .end local v6    # "strPrice":Ljava/lang/String;
    .end local v7    # "strStatus":Ljava/lang/String;
    .end local v8    # "strStreaming":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term:Landroid/widget/TextView;

    .line 100
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03ef

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "startDateLocal"

    .line 102
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 101
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->changeDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "date1":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term2:Landroid/widget/TextView;

    .line 104
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03eb

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "dueDateLocal"

    .line 106
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 105
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/common/model/purchase/Subscription;->changeDateFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "date2":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term:Landroid/widget/TextView;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->term2:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 121
    .end local v2    # "date1":Ljava/lang/String;
    .end local v3    # "date2":Ljava/lang/String;
    .restart local v8    # "strStreaming":Ljava/lang/String;
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03f1

    .line 122
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 132
    .restart local v5    # "strMp3":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->streaming:Landroid/widget/TextView;

    .line 133
    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03ee

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "usageCount"

    .line 134
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    const/4 v12, 0x1

    const-string v13, "downloadMaxCount"

    .line 135
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 132
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 145
    .restart local v7    # "strStatus":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->status:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a03ec

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->status:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
