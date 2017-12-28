.class public Lcom/android/launcher3/AppSearchSettingActivity$AppSearchSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "AppSearchSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AppSearchSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSearchSettingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppSearchSettingActivity$AppSearchSettingFragment;->addPreferencesFromResource(I)V

    .line 66
    return-void
.end method
