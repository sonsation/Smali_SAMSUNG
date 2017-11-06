.class public abstract Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.super Landroid/app/DialogFragment;
.source "MilkBaseDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_DISMISS_DIALOG:Ljava/lang/String; = "com.samsung.android.app.music.milkstore.action.dismiss_dialog"

.field private static final EXTRA_CLASS_SIMPLE_NAME:Ljava/lang/String; = "extra_class_simple_name"

.field private static final LOG_TAG:Ljava/lang/String; = "RadioBaseDialog"

.field private static sNumDialogsShown:I


# instance fields
.field private mLocalBroadcast:Landroid/content/BroadcastReceiver;

.field protected mPrimaryColor:I

.field private final mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field protected mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

.field private mStateListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->sNumDialogsShown:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mLocalBroadcast:Landroid/content/BroadcastReceiver;

    .line 309
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColor:I

    .line 314
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$2;-><init>(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    return-void
.end method

.method public static dismissDialog(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.milkstore.action.dismiss_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_class_simple_name"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 276
    const-string v1, "RadioBaseDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dismissDialog : name - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static isDialogShowing()Z
    .locals 1

    .prologue
    .line 284
    sget v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->sNumDialogsShown:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getDimAmount()F
    .locals 1

    .prologue
    .line 170
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method protected getHorizontalMargin(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    const/4 v0, -0x1

    return v0
.end method

.method protected abstract getLayoutId()I
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "MilkBaseDialog"

    return-object v0
.end method

.method protected getMarginBottom(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v0, -0x1

    return v0
.end method

.method protected getMarginTop(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, -0x1

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 324
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColor:I

    return v0
.end method

.method protected getStyle()I
    .locals 1

    .prologue
    .line 260
    const v0, 0x7f0f035d

    return v0
.end method

.method protected getTop(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const/4 v0, -0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAttach "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.app.music.milkstore.action.dismiss_dialog"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mLocalBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 209
    instance-of v1, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v1, :cond_0

    .line 210
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 212
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 217
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 220
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    sget v1, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->sNumDialogsShown:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->sNumDialogsShown:I

    .line 83
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getStyle()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 84
    .local v0, "ret":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->updateAttribute(Landroid/app/Dialog;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->setRetainInstance(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreateDialog"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDialogCreated(Landroid/app/Dialog;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mStateListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mStateListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;->onDisplayed()V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->addOnServiceStateListener(Landroid/content/ServiceConnection;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onMilkServiceConnected()V

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 106
    :cond_3
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDetach "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mLocalBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 231
    :cond_0
    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 115
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismiss "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mStateListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mStateListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;->onDismissed()V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->removeOnServiceStateListener(Landroid/content/ServiceConnection;)V

    .line 254
    :cond_1
    sget v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->sNumDialogsShown:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->sNumDialogsShown:I

    .line 255
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMilkServiceConnected "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method protected onMilkServiceDisconnected()V
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMilkServiceDisconnected "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 297
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onMilkServiceConnected()V

    .line 300
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 304
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onMilkServiceDisconnected()V

    .line 307
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStart "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onViewCreated "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method protected primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 312
    return-void
.end method

.method public setOnDialogStateListener(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->mStateListener:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    .line 265
    return-void
.end method

.method protected updateAttribute(Landroid/app/Dialog;)V
    .locals 14
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 119
    .local v8, "window":Landroid/view/Window;
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 121
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAttribute : before width - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", height - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gravity - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 123
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 125
    invoke-virtual {v8}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getMarginTop(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getMarginBottom(Landroid/content/Context;)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v3, v9

    .line 126
    .local v3, "heightMargin":F
    invoke-virtual {v8}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getHorizontalMargin(Landroid/content/Context;)I

    move-result v9

    int-to-float v7, v9

    .line 128
    .local v7, "widthMargin":F
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 129
    .local v2, "height":I
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 131
    .local v6, "width":I
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_0

    .line 132
    int-to-float v9, v2

    sub-float/2addr v9, v3

    float-to-int v9, v9

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 134
    :cond_0
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-ltz v9, :cond_3

    .line 135
    int-to-float v9, v6

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 154
    :goto_0
    invoke-virtual {v8}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getTop(Landroid/content/Context;)I

    move-result v5

    .line 155
    .local v5, "top":I
    if-ltz v5, :cond_1

    .line 156
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 157
    const/16 v9, 0x31

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getDimAmount()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getDimAmount()F

    move-result v9

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 162
    iget v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getLogTag()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAttribute : after width - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", height - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", y - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", gravity - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    return-void

    .line 137
    .end local v5    # "top":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    .line 138
    .local v0, "deviceType":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 140
    if-nez v0, :cond_4

    .line 141
    int-to-double v10, v6

    const-wide v12, 0x3feb333333333333L    # 0.85

    mul-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0

    .line 143
    :cond_4
    int-to-double v10, v6

    const-wide/high16 v12, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0

    .line 146
    :cond_5
    if-nez v0, :cond_6

    .line 147
    int-to-double v10, v6

    const-wide/high16 v12, 0x3fe4000000000000L    # 0.625

    mul-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0

    .line 149
    :cond_6
    int-to-double v10, v6

    const-wide/high16 v12, 0x3fde000000000000L    # 0.46875

    mul-double/2addr v10, v12

    double-to-int v9, v10

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0
.end method
