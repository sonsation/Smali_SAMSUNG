.class Lcom/android/settings/applications/InstalledAppDetails$17;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails;->addDynamicPrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$17;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$17;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const-class v1, Lcom/android/settings/applications/WriteSettingsDetails;

    .line 1646
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$17;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1645
    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->-wrap1(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/Class;Ljava/lang/CharSequence;)V

    .line 1647
    const/4 v0, 0x1

    return v0
.end method
