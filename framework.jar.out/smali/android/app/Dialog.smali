.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl0;,
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DEBUG:Z = false

.field private static final DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final DISMISS:I = 0x43

.field private static final SHOW:I = 0x45

.field private static final SUPPORT_DEX_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeTypeStarting:I

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFocus:Z

.field private mIsDeviceDefaultLight:Z

.field private final mListenersHandler:Landroid/os/Handler;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field final mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 198
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean v6, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 147
    iput-boolean v5, p0, Landroid/app/Dialog;->mCreated:Z

    .line 148
    iput-boolean v5, p0, Landroid/app/Dialog;->mShowing:Z

    .line 149
    iput-boolean v5, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 151
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 163
    iput v5, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 164
    iput-boolean v5, p0, Landroid/app/Dialog;->mHasFocus:Z

    .line 166
    new-instance v3, Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl0;

    invoke-direct {v3, p0}, Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl0;-><init>(Landroid/app/Dialog;)V

    iput-object v3, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    .line 203
    if-eqz p3, :cond_2

    .line 204
    if-nez p2, :cond_0

    .line 205
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 206
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010308

    invoke-virtual {v3, v4, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 207
    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 209
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 214
    :goto_0
    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    .line 216
    new-instance v2, Lcom/android/internal/policy/PhoneWindow;

    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 217
    .local v2, "w":Landroid/view/Window;
    iput-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    .line 218
    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 219
    invoke-virtual {v2, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 220
    iget-object v3, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v3, v7, v7}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 221
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 223
    new-instance v3, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v3, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v3, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    .line 225
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 226
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 227
    .local v0, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600cb

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600cd

    invoke-virtual {v3, v4, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 229
    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-nez v3, :cond_1

    .line 230
    iput-boolean v6, p0, Landroid/app/Dialog;->mIsDeviceDefaultLight:Z

    .line 202
    :cond_1
    return-void

    .line 211
    .end local v0    # "colorValue":Landroid/util/TypedValue;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "w":Landroid/view/Window;
    :cond_2
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 250
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 251
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 248
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 243
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 244
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 241
    return-void
.end method

.method private checkIME()Z
    .locals 4

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 516
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 518
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 519
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 521
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v3, :pswitch_data_0

    .line 527
    const/4 v1, 0x0

    .line 532
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return v1

    .line 524
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :pswitch_0
    const/4 v1, 0x1

    .line 525
    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkMirrorLinkEnabled()Z
    .locals 3

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "mirrorLinkOn":Z
    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    const/4 v0, 0x1

    .line 510
    :cond_0
    return v0
.end method

.method private checkShowingCondition()Z
    .locals 1

    .prologue
    .line 498
    invoke-direct {p0}, Landroid/app/Dialog;->checkMirrorLinkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Dialog;->checkIME()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 501
    :cond_1
    invoke-direct {p0}, Landroid/app/Dialog;->checkWhiteList()Z

    move-result v0

    return v0
.end method

.method private checkWhiteList()Z
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 536
    const-string/jumbo v7, "com.samsung.mirrorlink.acms.pkgnames"

    .line 538
    .local v7, "PKGNAME_AUTHORITY":Ljava/lang/String;
    const-string/jumbo v6, "pkgname"

    .line 539
    .local v6, "BASE_PATH_PKGNAME":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 543
    .local v1, "CONTENT_URI_PKGNAMES":Landroid/net/Uri;
    const-string/jumbo v10, "com.mirrorlink.android.service.ACCESS_PERMISSION"

    .line 544
    .local v10, "permission":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    .line 545
    .local v11, "res":I
    const-string/jumbo v0, "Dialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Check Access Permission  : res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz v11, :cond_0

    .line 548
    return v13

    .line 551
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 553
    .local v8, "currentPackageName":Ljava/lang/String;
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 554
    new-array v2, v14, [Ljava/lang/String;

    aput-object v6, v2, v13

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/String;

    aput-object v8, v4, v13

    .line 553
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 557
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 558
    const-string/jumbo v0, "Dialog"

    const-string/jumbo v2, "Cursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v12, 0x0

    .line 572
    .local v12, "ret":Z
    :goto_0
    return v12

    .line 561
    .end local v12    # "ret":Z
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 563
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 564
    const-string/jumbo v0, "Dialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentPackageName =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string/jumbo v0, "Dialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "db column packagename ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v12, 0x1

    .line 570
    .restart local v12    # "ret":Z
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 568
    .end local v12    # "ret":Z
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "ret":Z
    goto :goto_1
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1380
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1381
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1382
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1383
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1384
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1386
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 1387
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 1388
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    const/4 v1, 0x0

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 1391
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    if-nez v0, :cond_3

    :goto_1
    return-object v2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_1
.end method

.method private getAssociatedActivityOfContext()Landroid/app/Activity;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1395
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1396
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1397
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1398
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1399
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1401
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 1402
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 1403
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    const/4 v1, 0x0

    .local v1, "context":Landroid/content/Context;
    goto :goto_0

    .line 1406
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    if-nez v0, :cond_3

    move-object v0, v2

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3
    return-object v0
.end method

.method private sendDismissMessage()V
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 624
    :cond_0
    return-void
.end method

.method private sendShowMessage()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 631
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -android_app_Dialog-mthref-0()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    return-void
.end method

.method public ExpandedShow(Z)V
    .locals 10
    .param p1, "isMainScreen"    # Z

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 432
    const-string/jumbo v4, "Dialog"

    const-string/jumbo v5, "call ExpandedShow"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string/jumbo v4, "Dialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isMainScreen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 436
    .local v3, "pt":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 438
    invoke-direct {p0}, Landroid/app/Dialog;->checkShowingCondition()Z

    move-result v4

    if-nez v4, :cond_0

    .line 439
    return-void

    .line 444
    :cond_0
    iget-boolean v4, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v4, :cond_4

    .line 445
    iget-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 446
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v8}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v8}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 449
    :cond_1
    iget-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_2
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 452
    .local v1, "l":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v4, "Dialog"

    const-string/jumbo v5, "mShowing is true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string/jumbo v4, "Dialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "l.x  is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz p1, :cond_3

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    :goto_0
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 457
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 458
    const-string/jumbo v4, "Dialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAttributes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 455
    :cond_3
    iget v4, v3, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 462
    .end local v1    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iput-boolean v7, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 464
    iget-boolean v4, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v4, :cond_5

    .line 465
    invoke-virtual {p0, v9}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 468
    :cond_5
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 469
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 471
    iget-object v4, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v8}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 472
    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 473
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 474
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 475
    new-instance v4, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v4, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v4, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    .line 478
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 479
    .restart local v1    # "l":Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_7

    .line 481
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 482
    .local v2, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 483
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 485
    move-object v1, v2

    .line 487
    .end local v2    # "nl":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    if-eqz p1, :cond_8

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    :goto_1
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 488
    const-string/jumbo v4, "Dialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "l.x is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v4, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/Dialog;->mShowing:Z

    .line 493
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V

    .line 430
    return-void

    .line 487
    :cond_8
    iget v4, v3, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_1
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 793
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 1506
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1508
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1502
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1238
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 1237
    :cond_0
    return-void
.end method

.method public create()V
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 309
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 592
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 593
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    .line 591
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method dismissDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    const-string/jumbo v0, "Dialog"

    const-string/jumbo v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void

    .line 601
    :cond_0
    return-void

    .line 610
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 615
    :cond_2
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 616
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 617
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 618
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    .line 620
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 599
    return-void

    .line 611
    :catchall_0
    move-exception v0

    .line 612
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 613
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 615
    :cond_3
    iput-object v2, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 616
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 617
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 618
    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    .line 620
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 611
    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1109
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    const/4 v0, 0x1

    return v0

    .line 1112
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1018
    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1019
    return v3

    .line 1021
    :cond_0
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    return v3

    .line 1024
    :cond_1
    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1025
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1024
    :cond_2
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    const/4 v0, 0x1

    return v0

    .line 1042
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 641
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 642
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    .line 640
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 1117
    invoke-virtual {p0}, Landroid/app/Dialog;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1120
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1121
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_1

    .line 1122
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 1123
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 1125
    return v2

    .end local v0    # "isFullScreen":Z
    :cond_0
    move v0, v2

    .line 1122
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1121
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1057
    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1058
    return v4

    .line 1062
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1064
    .local v0, "conf":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v4, :cond_1

    .line 1066
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 1067
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1069
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1071
    return v4

    .line 1076
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    const/4 v0, 0x1

    return v0

    .line 1094
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 749
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 737
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDialogFocus()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Landroid/app/Dialog;->mHasFocus:Z

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1470
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 1611
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 578
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1247
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 1246
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_0

    .line 1372
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1370
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1359
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1358
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 994
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 881
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 975
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1290
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 655
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1256
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1197
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 1141
    if-nez p1, :cond_0

    .line 1142
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1145
    :cond_0
    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1133
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 998
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 964
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 829
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 830
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 831
    const/4 v0, 0x1

    return v0

    .line 834
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 873
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 898
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 858
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 860
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 861
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1175
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 1164
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1165
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1167
    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1216
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1222
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1183
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 1184
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1182
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1209
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 1153
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 1154
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    :cond_0
    return v0

    .line 1156
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 703
    const-string/jumbo v1, "android:dialogHierarchy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 704
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 706
    return-void

    .line 708
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 709
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 710
    const-string/jumbo v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 702
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 684
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 685
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "android:dialogShowing"

    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_0

    .line 687
    const-string/jumbo v1, "android:dialogHierarchy"

    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 689
    :cond_0
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1307
    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1308
    const-string/jumbo v5, "search"

    .line 1307
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1311
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1312
    .local v3, "appName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v1

    move v5, v2

    .line 1313
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1314
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1315
    const/4 v1, 0x1

    return v1

    .line 1317
    :cond_0
    return v2
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .prologue
    .line 1298
    iput-object p1, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    .line 1299
    invoke-virtual {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 661
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 668
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 912
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 914
    const/4 v0, 0x1

    return v0

    .line 917
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 935
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 969
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    :cond_0
    return-void
.end method

.method public onWindowDismissed(Z)V
    .locals 0
    .param p1, "finishTask"    # Z

    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1003
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 990
    iput-boolean p1, p0, Landroid/app/Dialog;->mHasFocus:Z

    .line 989
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v1, 0x0

    .line 1334
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    if-nez v0, :cond_0

    .line 1335
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1337
    :cond_0
    return-object v1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 1343
    :try_start_0
    iput p2, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1344
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1346
    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1344
    return-object v0

    .line 1345
    :catchall_0
    move-exception v0

    .line 1346
    iput v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1345
    throw v0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1277
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 1276
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1229
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 1228
    :cond_0
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1263
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1262
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1434
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1541
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1540
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1478
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1477
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 1490
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_1

    .line 1494
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1489
    return-void

    .line 1491
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 759
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 758
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 770
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 769
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 782
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 781
    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1578
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1577
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1458
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1457
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1466
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1465
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1442
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1441
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1450
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1449
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    const/4 v1, 0x0

    .line 1523
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1524
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1526
    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1525
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1526
    const-string/jumbo v2, " and can not be replaced."

    .line 1525
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1524
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :cond_0
    if-eqz p1, :cond_1

    .line 1529
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1522
    :goto_0
    return-void

    .line 1531
    :cond_1
    iput-object v1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v1, 0x0

    .line 1549
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1550
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1552
    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1552
    const-string/jumbo v2, " and can not be replaced."

    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1550
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_0
    if-eqz p1, :cond_1

    .line 1555
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1548
    :goto_0
    return-void

    .line 1557
    :cond_1
    iput-object v1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 1618
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1617
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    const/4 v0, 0x0

    .line 1566
    if-eqz p1, :cond_0

    .line 1567
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    .line 1565
    :goto_0
    return-void

    .line 1569
    :cond_0
    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 281
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 278
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 813
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 812
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 802
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 801
    return-void
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1604
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1603
    return-void
.end method

.method public show()V
    .locals 15

    .prologue
    const v14, 0x10501af

    const/16 v13, 0x3e8

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 322
    invoke-direct {p0}, Landroid/app/Dialog;->checkShowingCondition()Z

    move-result v9

    if-nez v9, :cond_0

    .line 323
    return-void

    .line 328
    :cond_0
    iget-boolean v9, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v9, :cond_3

    .line 329
    iget-object v9, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v9, :cond_2

    .line 330
    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v12}, Landroid/view/Window;->hasFeature(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 331
    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v12}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 333
    :cond_1
    iget-object v9, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_2
    return-void

    .line 338
    :cond_3
    iput-boolean v10, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 340
    iget-boolean v9, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v9, :cond_4

    .line 341
    invoke-virtual {p0, v11}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 344
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 346
    instance-of v9, p0, Landroid/app/ProgressDialog;

    if-eqz v9, :cond_5

    move-object v9, p0

    .line 347
    check-cast v9, Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->getCurrentProgressStyle()I

    move-result v9

    if-ne v9, v13, :cond_5

    .line 348
    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 349
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v9, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 351
    .local v1, "dialogBaseSize":I
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 352
    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 353
    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 357
    .end local v1    # "dialogBaseSize":I
    .end local v5    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 359
    iget-object v9, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-nez v9, :cond_6

    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v12}, Landroid/view/Window;->hasFeature(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 360
    iget-object v9, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 361
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 362
    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 363
    new-instance v9, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v9, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v9, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    .line 366
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6
    iget-object v9, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 368
    .local v8, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v9, v9, 0x100

    if-nez v9, :cond_7

    .line 369
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v9, v9, 0x100

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 372
    :cond_7
    const/4 v4, 0x0

    .line 373
    .local v4, "isAlreadyAdded":Z
    iget-boolean v9, p0, Landroid/app/Dialog;->mIsDeviceDefaultLight:Z

    if-eqz v9, :cond_b

    .line 374
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x20000

    and-int/2addr v9, v10

    if-eqz v9, :cond_9

    .line 381
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivityOfContext()Landroid/app/Activity;

    move-result-object v0

    .line 382
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_9

    .line 384
    const/4 v6, 0x0

    .line 386
    .local v6, "noUseInputMethod":Z
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 387
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 388
    .local v7, "stackId":I
    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    .line 389
    const/4 v6, 0x1

    .line 396
    .end local v7    # "stackId":I
    :cond_8
    :goto_0
    if-nez v6, :cond_d

    .line 406
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v6    # "noUseInputMethod":Z
    :cond_9
    :goto_1
    instance-of v9, p0, Landroid/app/ProgressDialog;

    if-eqz v9, :cond_a

    move-object v9, p0

    .line 407
    check-cast v9, Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->getCurrentProgressStyle()I

    move-result v9

    if-ne v9, v13, :cond_a

    .line 408
    iget-object v9, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 409
    .restart local v1    # "dialogBaseSize":I
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 410
    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 415
    .end local v1    # "dialogBaseSize":I
    :cond_a
    iget-object v9, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e00fb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v8, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 418
    :cond_b
    if-nez v4, :cond_c

    .line 419
    iget-object v9, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v9, v10, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    :cond_c
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/Dialog;->mShowing:Z

    .line 423
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V

    .line 321
    return-void

    .line 399
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v6    # "noUseInputMethod":Z
    :cond_d
    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v10, -0x20001

    and-int/2addr v9, v10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 400
    iget-object v9, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v10, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v9, v10, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    const/4 v4, 0x1

    goto :goto_1

    .line 392
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    const/4 v1, 0x0

    .line 1584
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1585
    iput-object v1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1590
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1591
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1592
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1594
    const/4 v0, 0x1

    return v0

    .line 1586
    :cond_1
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1587
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1418
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1269
    return-void
.end method
