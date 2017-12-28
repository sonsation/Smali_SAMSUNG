.class Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;
.super Lcom/android/launcher3/home/ExternalRequestInfo;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingInstallShortcutInfo"
.end annotation


# instance fields
.field final activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

.field final data:Landroid/content/Intent;

.field final label:Ljava/lang/String;

.field final launchIntent:Landroid/content/Intent;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;J)V
    .locals 7
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "time"    # J

    .prologue
    .line 533
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/android/launcher3/home/ExternalRequestInfo;-><init>(ILcom/android/launcher3/common/compat/UserHandleCompat;J)V

    .line 534
    iput-object p1, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 535
    iput-object p2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 537
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 538
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 539
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 541
    iget-object v2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v2, p1}, Lcom/android/launcher3/home/InstallShortcutReceiver;->convertKnoxLiveIconIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    iget-object v2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v3, "userid"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 543
    .local v1, "userId":I
    invoke-static {p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 546
    .end local v1    # "userId":I
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    .line 547
    .local v0, "intentUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    if-eqz v0, :cond_1

    .line 548
    iput-object v0, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 549
    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_USER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;J)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "time"    # J

    .prologue
    .line 557
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/launcher3/home/ExternalRequestInfo;-><init>(ILcom/android/launcher3/common/compat/UserHandleCompat;J)V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 559
    iput-object p2, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 560
    iput-object p1, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 562
    iget-object v0, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {p2, p1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 563
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    .line 564
    return-void
.end method


# virtual methods
.method public encodeToString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 567
    iget-object v7, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    if-eqz v7, :cond_0

    .line 571
    :try_start_0
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    .line 572
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "type"

    .line 573
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "time"

    .line 574
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->requestTime:J

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "intent.launch"

    .line 575
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "isAppShortcut"

    .line 576
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Z)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "userHandle"

    .line 577
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 578
    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 577
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v7

    .line 579
    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 618
    :goto_0
    return-object v6

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "InstallShortcutReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when adding shortcut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 588
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->label:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/android/launcher3/home/InstallShortcutReceiver;->ensureValidName(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string v8, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 590
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    const-string v8, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 591
    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$ShortcutIconResource;

    .line 595
    .local v3, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    :try_start_1
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    .line 596
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "type"

    .line 597
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "time"

    .line 598
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->requestTime:J

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "intent.launch"

    .line 599
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "name"

    .line 600
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "userHandle"

    .line 601
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 602
    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    .line 601
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v4

    .line 603
    .local v4, "json":Lorg/json/JSONStringer;
    if-eqz v1, :cond_1

    .line 604
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 605
    .local v2, "iconByteArray":[B
    const-string v7, "icon"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const/4 v8, 0x0

    array-length v9, v2

    const/4 v10, 0x0

    .line 606
    invoke-static {v2, v8, v9, v10}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object v8

    .line 605
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 609
    .end local v2    # "iconByteArray":[B
    :cond_1
    if-eqz v3, :cond_2

    .line 610
    const-string v7, "iconResource"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 611
    const-string v7, "iconResourcePackage"

    invoke-virtual {v4, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    iget-object v8, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 612
    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v4

    .line 614
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto/16 :goto_0

    .line 615
    .end local v4    # "json":Lorg/json/JSONStringer;
    :catch_1
    move-exception v0

    .line 616
    .restart local v0    # "e":Lorg/json/JSONException;
    const-string v7, "InstallShortcutReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception when adding shortcut: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method getShortcutInfo()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 664
    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    if-eqz v5, :cond_3

    .line 665
    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    iget-object v6, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    .line 667
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v5, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v4

    .line 668
    .local v4, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 669
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 670
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    const/4 v2, 0x0

    .line 671
    .local v2, "isActivityInApps":Z
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 672
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 673
    .local v3, "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v3}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 674
    const/4 v2, 0x1

    .line 679
    .end local v3    # "lai":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    :cond_1
    if-nez v2, :cond_2

    .line 680
    iput-boolean v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppShortcut:Z

    .line 681
    iput v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 685
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "isActivityInApps":Z
    .end local v4    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    :cond_2
    :goto_0
    return-object v1

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/HomeLoader;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 695
    :cond_0
    :goto_0
    return-object v0

    .line 692
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 693
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method isLuncherActivity()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runRequestInfo(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 625
    iget-object v6, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    if-eqz v6, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 626
    .local v4, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.samsung.android.da.daagent"

    .line 627
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 628
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    .line 630
    :cond_0
    invoke-static {p1, v5, v4}, Lcom/android/launcher3/LauncherModel;->isValidPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 631
    const-string v6, "InstallShortcutReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring shortcut for absent package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    .end local v4    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_1
    return-void

    .line 625
    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    goto :goto_0

    .line 636
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGameHome()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 637
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v2

    .line 638
    .local v2, "gameHomeManager":Lcom/android/launcher3/gamehome/GameHomeManager;
    invoke-virtual {v2}, Lcom/android/launcher3/gamehome/GameHomeManager;->isGameHomeHidden()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 639
    iget-object v6, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    if-eqz v6, :cond_3

    .line 640
    iget-object v6, p0, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->activityInfo:Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/gamehome/GameHomeManager;->hasGameHomeThisPackage(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 641
    const-string v6, "InstallShortcutReceiver"

    const-string v7, "Ignoring shortcut for game packcage & hidden setting"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 648
    .end local v2    # "gameHomeManager":Lcom/android/launcher3/gamehome/GameHomeManager;
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    .line 649
    .local v1, "app":Lcom/android/launcher3/LauncherAppState;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v0, "addShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/home/InstallShortcutReceiver$PendingInstallShortcutInfo;->getShortcutInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    .line 651
    .local v3, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v3, :cond_4

    .line 652
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 655
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v6

    .line 656
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 655
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/home/HomeLoader;->getBadgeCount(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)I

    move-result v6

    iput v6, v3, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 660
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v0, v7}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto :goto_1
.end method
