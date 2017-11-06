.class Lcom/samsung/android/app/music/common/settings/SettingsListActivity$MultiWindowChangeListener;
.super Ljava/lang/Object;
.source "SettingsListActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowChangeListener"
.end annotation


# instance fields
.field private final mActivity:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$MultiWindowChangeListener;->mActivity:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    .line 287
    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 1
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$MultiWindowChangeListener;->mActivity:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$300(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;Z)V

    .line 301
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsListActivity$MultiWindowChangeListener;->mActivity:Lcom/samsung/android/app/music/common/settings/SettingsListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsListActivity;->access$300(Lcom/samsung/android/app/music/common/settings/SettingsListActivity;Z)V

    .line 296
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 291
    return-void
.end method
