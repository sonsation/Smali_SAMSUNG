.class public Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "VoucherFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$VoucherItemId;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VoucherFragment"


# instance fields
.field private inputCodeViewHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;

.field private final mOnInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->mOnInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;Landroid/database/Cursor;J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->useVoucher(Landroid/database/Cursor;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->registerVoucher(Ljava/lang/String;)V

    return-void
.end method

.method private handlingVoucherError(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "ErrorMsg":Ljava/lang/String;
    const-string v1, "VoucherFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlingVoucherError errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 231
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 232
    return-void

    .line 203
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0401

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0402

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    goto :goto_0

    .line 209
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    goto :goto_0

    .line 212
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0400

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    goto :goto_0

    .line 216
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0403

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    goto :goto_0

    .line 219
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0414

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    goto :goto_0

    .line 223
    :pswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    goto :goto_0

    .line 227
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private registerVoucher(Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v1, "VoucherFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerVoucher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    const-string v1, "VoucherFragment"

    const-string/jumbo v2, "registerVoucher need to sign in or sign up"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 159
    .local v0, "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->registerVoucher(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private useVoucher(Landroid/database/Cursor;J)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "id"    # J

    .prologue
    .line 163
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherUsable;->useVouher(Landroid/app/Fragment;Landroid/database/Cursor;J)V

    .line 164
    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0x57

    return v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 169
    return-void
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

    .line 173
    const-string v1, "VoucherFragment"

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

    .line 175
    if-nez p3, :cond_0

    .line 177
    packed-switch p2, :pswitch_data_0

    .line 184
    const-string v1, "VoucherFragment"

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

    .line 194
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const-string v1, "VoucherFragment"

    const-string v2, "REGISTER_VOUCHER success"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->inputCodeViewHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->initVoucherCode()V

    goto :goto_0

    .line 187
    :cond_0
    const/4 v0, -0x1

    .line 188
    .local v0, "errCode":I
    aget-object v1, p5, v4

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    aget-object v1, p5, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->handlingVoucherError(I)V

    .line 192
    :cond_1
    const-string v1, "VoucherFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail error code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x27e5
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;
    .locals 3

    .prologue
    .line 120
    new-instance v1, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v2, "voucherTitle"

    .line 121
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;

    .line 123
    .local v0, "builder":Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->onCreateAdapter()Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 134
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 135
    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 148
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherQueryArgs;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const v0, 0x7f040090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v1, "VoucherFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " onLoadFinished() | id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 142
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 144
    return-void

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/app/Activity;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->setListShown(Z)V

    .line 64
    const v2, 0x7f120202

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 65
    .local v1, "headerLayout":Landroid/view/ViewGroup;
    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->mOnInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->inputCodeViewHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->inputCodeViewHeader:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherInputCodeHeader;->build()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherAdapter;->setOnItemButtonClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->getListType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->initListLoader(I)V

    .line 71
    return-void
.end method
