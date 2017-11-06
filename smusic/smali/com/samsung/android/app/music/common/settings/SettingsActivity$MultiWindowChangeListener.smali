.class Lcom/samsung/android/app/music/common/settings/SettingsActivity$MultiWindowChangeListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowChangeListener"
.end annotation


# instance fields
.field private final mActivity:Lcom/samsung/android/app/music/common/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/settings/SettingsActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity$MultiWindowChangeListener;->mActivity:Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    .line 190
    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 1
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity$MultiWindowChangeListener;->mActivity:Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->access$000(Lcom/samsung/android/app/music/common/settings/SettingsActivity;Z)V

    .line 204
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity$MultiWindowChangeListener;->mActivity:Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->access$000(Lcom/samsung/android/app/music/common/settings/SettingsActivity;Z)V

    .line 199
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 194
    return-void
.end method
