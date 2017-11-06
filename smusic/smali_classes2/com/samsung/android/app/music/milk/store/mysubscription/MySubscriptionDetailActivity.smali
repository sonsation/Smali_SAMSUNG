.class public Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "MySubscriptionDetailActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MySubscriptionDetailActivity"


# instance fields
.field private final mISubscriptionEvent:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

.field mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private orderId:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private view:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$2;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->mISubscriptionEvent:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->productId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->productId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->view:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    return-object v0
.end method

.method private setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->productId:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    const-string v0, "MySubscriptionDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 166
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 168
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03e7

    .line 169
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03e8

    .line 170
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0092

    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity$3;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;)V

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a008a

    .line 184
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ACTION_CANCEL_SUBSCRIPTION"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_0
    const-string v0, "MySubscriptionDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REQUEST_ID_CONFIRM_PASSWORD reusltCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x2717
        :pswitch_0
    .end packed-switch
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 195
    const-string v1, "MySubscriptionDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled reqType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " responseType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    packed-switch p2, :pswitch_data_0

    .line 212
    const-string v1, "MySubscriptionDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled unexpect req type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    if-eqz p3, :cond_0

    .line 200
    const/4 v0, -0x1

    .line 201
    .local v0, "errCode":I
    aget-object v1, p5, v4

    if-eqz v1, :cond_1

    .line 202
    aget-object v1, p5, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 204
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 207
    const-string v1, "MySubscriptionDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE_SUBSCRIPTION fail error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x27e2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 49
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 52
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    .line 53
    .local v1, "uiType":I
    const v2, 0x7f0400fd

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->setContentView(I)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v2, "order_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->orderId:Ljava/lang/String;

    .line 59
    const-string v2, "MySubscriptionDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate savedInstanceState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    const v2, 0x7f1202e7

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->view:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->view:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->mISubscriptionEvent:Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView;->setSubscriptionEventListener(Lcom/samsung/android/app/music/milk/store/mysubscription/SubscriptionDetailView$ISubscriptionEvent;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->initMiniPlayer()V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const v3, 0x7f12002e

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->mLoaderCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 70
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "order_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->orderId:Ljava/lang/String;

    .line 62
    const-string v2, "MySubscriptionDetailActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate getExtras : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionDetailActivity;->orderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
