.class Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$2;
.super Ljava/lang/Object;
.source "WifiAdvancedSecSetupActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->onWpsPushBtnPressed()V

    .line 205
    const/4 v0, 0x1

    return v0
.end method
