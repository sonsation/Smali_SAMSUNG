.class Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;
.super Ljava/lang/Object;
.source "SoftwareInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 828
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "AndroidVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 830
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "firmware_version"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 831
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 833
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 901
    :cond_1
    :goto_0
    return-void

    .line 834
    :cond_2
    const-string/jumbo v2, "SamsungExperienceVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 835
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "samsung_experience_version"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 836
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 837
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 838
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 839
    :cond_4
    const-string/jumbo v2, "BasebandVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "Baseband version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 840
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "baseband_version"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 841
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 842
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 843
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 844
    :cond_7
    const-string/jumbo v2, "KernelVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 845
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "kernel_version"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 846
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 847
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 848
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 849
    :cond_9
    const-string/jumbo v2, "BuildNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 850
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "build_number"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 851
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 852
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 853
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 854
    :cond_b
    const-string/jumbo v2, "SEforAndroidStatus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 855
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "selinux_status"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 856
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 857
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 858
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 859
    :cond_d
    const-string/jumbo v2, "SecuritySoftwareVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 860
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "security_sw_version"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 861
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 862
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 863
    :cond_e
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 864
    :cond_f
    const-string/jumbo v2, "KnoxVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "Knox version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 865
    :cond_10
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v0

    .line 866
    .local v0, "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    sget-object v2, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_12

    .line 867
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "knox_version"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 868
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 869
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OMCPackage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 872
    :cond_11
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 874
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 875
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OMCPackage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 878
    :cond_13
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 880
    .end local v0    # "currentVersion":Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;
    :cond_14
    const-string/jumbo v2, "ServiceProviderSWver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 881
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.app.omcagent"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 882
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "omc_version"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 883
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 884
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OMCPackage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 887
    :cond_15
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 889
    :cond_16
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 890
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "OMCPackage"

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "no"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 893
    :cond_17
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 895
    :cond_18
    const-string/jumbo v2, "AndroidSecurityPatchLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 896
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    const-string/jumbo v4, "security_patch"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 897
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 898
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 899
    :cond_19
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/SoftwareInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
