.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;
.super Landroid/os/AsyncTask;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)I
    .locals 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 792
    const/4 v4, -0x1

    .line 793
    .local v4, "ret":I
    const/4 v3, -0x1

    .line 794
    .local v3, "remainCnt":I
    const-string/jumbo v1, "com.sec.smartcard.manager:com.samsung.ucs.agent.baiMobile"

    .line 795
    .local v1, "csName":Ljava/lang/String;
    const-string/jumbo v8, "com.samsung.ucs.ucsservice"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v6

    .line 796
    .local v6, "ucsService":Lcom/samsung/android/knox/ucm/core/IUcmService;
    if-nez v6, :cond_0

    .line 797
    return v10

    .line 799
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 801
    :try_start_0
    const-string/jumbo v8, ""

    invoke-static {v1, v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "uri":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v6, v8, v7, p1, v9}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 803
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 804
    return v10

    .line 806
    :cond_1
    const-string/jumbo v8, "state"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 807
    .local v5, "state":I
    const-string/jumbo v8, "remainCnt"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 808
    const/16 v8, 0x83

    if-ne v5, v8, :cond_3

    .line 809
    const/4 v4, 0x0

    .line 824
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "state":I
    .end local v7    # "uri":Ljava/lang/String;
    :cond_2
    :goto_0
    return v4

    .line 810
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "state":I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x84

    if-ne v5, v8, :cond_4

    .line 811
    const/4 v4, 0x1

    goto :goto_0

    .line 812
    :cond_4
    const/16 v8, 0x85

    if-ne v5, v8, :cond_5

    .line 813
    const/4 v4, 0x2

    goto :goto_0

    .line 814
    :cond_5
    const/16 v8, 0x86

    if-ne v5, v8, :cond_6

    .line 815
    const/4 v4, 0x4

    goto :goto_0

    .line 816
    :cond_6
    const/16 v8, 0x87

    if-ne v5, v8, :cond_2

    .line 817
    const/16 v4, 0x8

    goto :goto_0

    .line 819
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "state":I
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 820
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 821
    return v10
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "cacpin"    # [Ljava/lang/String;

    .prologue
    .line 788
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->verifyPIN(Ljava/lang/String;)I

    move-result v0

    .line 789
    .local v0, "result":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "cacpin"    # [Ljava/lang/Object;

    .prologue
    .line 787
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "cacpin":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 829
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap4(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 833
    const/4 v7, 0x0

    .line 835
    .local v7, "res":Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 867
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v1, 0x7f0b095d

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    .line 869
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get5(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 827
    .end local v7    # "res":Z
    :goto_1
    return-void

    .line 837
    .restart local v7    # "res":Z
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 838
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "hw_auth_token"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    const-string/jumbo v0, "ConfirmLockPasswordFragment"

    const-string/jumbo v1, "VERIFY_PIN_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget v4, v1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap3(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;ZLandroid/content/Intent;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 870
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "res":Z
    :catch_0
    move-exception v6

    .line 871
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 843
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "res":Z
    :pswitch_2
    :try_start_1
    const-string/jumbo v0, "ConfirmLockPasswordFragment"

    const-string/jumbo v1, "VERIFY_PIN_FAIL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v1, 0x7f0b0960

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 847
    :pswitch_3
    const-string/jumbo v0, "ConfirmLockPasswordFragment"

    const-string/jumbo v1, "VERIFY_PIN_CARDLOCKED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v1, 0x7f0b0961

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 851
    :pswitch_4
    const-string/jumbo v0, "ConfirmLockPasswordFragment"

    const-string/jumbo v1, "VERIFY_PIN_CARDEXPIRED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v1, 0x7f0b0963

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 855
    :pswitch_5
    const-string/jumbo v0, "ConfirmLockPasswordFragment"

    const-string/jumbo v1, "VERIFY_PIN_CONNECTIONERROR"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v1, 0x7f0b095f

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 859
    :pswitch_6
    const-string/jumbo v0, "ConfirmLockPasswordFragment"

    const-string/jumbo v1, "VERIFY_PIN_CARDASSOCIATEERROR"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v1, 0x7f0b095e

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto/16 :goto_0

    .line 863
    :pswitch_7
    const-string/jumbo v0, "ConfirmLockPasswordFragment"

    const-string/jumbo v1, "VERIFY_PIN_CARDERROR"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v1, 0x7f0b0962

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 835
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 827
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 775
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get6(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get7(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/TextViewInputDisabler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-set1(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I

    .line 778
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-wrap2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 779
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b095b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b095c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 781
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 783
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 784
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$5;->this$1:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get2(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 774
    return-void
.end method
