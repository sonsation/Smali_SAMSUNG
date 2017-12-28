.class public Lcom/android/launcher3/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Stats$LaunchSourceUtils;,
        Lcom/android/launcher3/Stats$LaunchSourceProvider;
    }
.end annotation


# static fields
.field public static final ACTION_LAUNCH:Ljava/lang/String; = "com.android.launcher3.action.LAUNCH"

.field public static final CONTAINER_ALL_APPS:Ljava/lang/String; = "all_apps"

.field public static final CONTAINER_HOMESCREEN:Ljava/lang/String; = "homescreen"

.field public static final CONTAINER_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final DEBUG_BROADCASTS:Z = false

.field public static final EXTRA_CELLX:Ljava/lang/String; = "cellX"

.field public static final EXTRA_CELLY:Ljava/lang/String; = "cellY"

.field public static final EXTRA_CONTAINER:Ljava/lang/String; = "container"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "intent"

.field public static final EXTRA_SCREEN:Ljava/lang/String; = "screen"

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final SOURCE_EXTRA_CONTAINER:Ljava/lang/String; = "container"

.field public static final SOURCE_EXTRA_CONTAINER_PAGE:Ljava/lang/String; = "container_page"

.field public static final SOURCE_EXTRA_SUB_CONTAINER:Ljava/lang/String; = "sub_container"

.field public static final SOURCE_EXTRA_SUB_CONTAINER_PAGE:Ljava/lang/String; = "sub_container_page"

.field public static final SUB_CONTAINER_ALL_APPS_A_Z:Ljava/lang/String; = "a-z"

.field public static final SUB_CONTAINER_ALL_APPS_PREDICTION:Ljava/lang/String; = "prediction"

.field public static final SUB_CONTAINER_ALL_APPS_SEARCH:Ljava/lang/String; = "search"

.field public static final SUB_CONTAINER_FOLDER:Ljava/lang/String; = "folder"


# instance fields
.field private final mLaunchBroadcastPermission:Ljava/lang/String;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/launcher3/Stats;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 111
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Stats;->mLaunchBroadcastPermission:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public recordLaunch(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "shortcut"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 130
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 131
    .end local p2    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 133
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "flat":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.launcher3.action.LAUNCH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "intent"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 135
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 136
    const-string v4, "container"

    iget-wide v6, p3, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "screen"

    iget-wide v6, p3, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 137
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "cellX"

    iget v6, p3, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 138
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "cellY"

    iget v6, p3, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 139
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Stats$LaunchSourceUtils;->createSourceData()Landroid/os/Bundle;

    move-result-object v3

    .line 143
    .local v3, "sourceExtras":Landroid/os/Bundle;
    invoke-static {p1, v3}, Lcom/android/launcher3/Stats$LaunchSourceUtils;->populateSourceDataFromAncestorProvider(Landroid/view/View;Landroid/os/Bundle;)V

    .line 144
    const-string v4, "source"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 145
    iget-object v4, p0, Lcom/android/launcher3/Stats;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/Stats;->mLaunchBroadcastPermission:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 146
    return-void
.end method
