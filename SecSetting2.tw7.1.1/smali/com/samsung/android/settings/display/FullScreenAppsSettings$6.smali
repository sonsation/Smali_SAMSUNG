.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;
.super Ljava/lang/Object;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;->refreshDisplayedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

.field final synthetic val$row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FullScreenAppsSettings;
    .param p2, "val$row"    # Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->val$row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 394
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 395
    .local v0, "val":Z
    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->val$row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget-object v2, v2, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$6;->val$row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget v3, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-wrap1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Ljava/lang/String;IZ)Z

    .line 396
    const/4 v1, 0x1

    return v1
.end method
