.class Lcom/samsung/android/settings/applications/ManageDefaultApps$10;
.super Ljava/lang/Object;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/applications/ManageDefaultApps;->buildDefaultAppSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/applications/ManageDefaultApps;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$10;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 296
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps$10;->this$0:Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-static {v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->-wrap0(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_app_selection_option"

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 297
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 299
    const/4 v1, 0x1

    return v1
.end method
