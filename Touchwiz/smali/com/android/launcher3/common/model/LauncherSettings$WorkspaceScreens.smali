.class public final Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;
.super Ljava/lang/Object;
.source "LauncherSettings.java"

# interfaces
.implements Lcom/android/launcher3/common/model/LauncherSettings$ChangeLogColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WorkspaceScreens"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SCREEN_RANK:Ljava/lang/String; = "screenRank"

.field public static final TABLE_NAME:Ljava/lang/String; = "workspaceScreens"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const-string v0, "content://com.sec.android.app.launcher.settings/workspaceScreens"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/LauncherSettings$WorkspaceScreens;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
