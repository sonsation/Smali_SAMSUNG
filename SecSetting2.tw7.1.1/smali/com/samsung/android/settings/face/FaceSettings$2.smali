.class Lcom/samsung/android/settings/face/FaceSettings$2;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceSettings;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1147
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    .line 1148
    .local v4, "mBixbyStateId":Ljava/lang/String;
    const-string/jumbo v5, "FcstFaceSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    .line 1151
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v6

    const/16 v7, 0x100

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v1, 0x1

    .line 1152
    .local v1, "isFaceScreenLock":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "face_without_swipe_to_unlock"

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v7

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x1

    .line 1153
    .local v3, "isWithoutSwipeToUnlock":Z
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v2

    .line 1155
    .local v2, "isRecognitionSpeedUp":Z
    const-string/jumbo v5, "FaceLockSettings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1156
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1157
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettingMenu"

    const-string/jumbo v7, "AlreadyIn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1160
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1146
    :cond_1
    :goto_3
    return-void

    .line 1150
    .end local v1    # "isFaceScreenLock":Z
    .end local v2    # "isRecognitionSpeedUp":Z
    .end local v3    # "isWithoutSwipeToUnlock":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "isEnrolledFace":Z
    goto :goto_0

    .line 1151
    .end local v0    # "isEnrolledFace":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isFaceScreenLock":Z
    goto :goto_1

    .line 1152
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isWithoutSwipeToUnlock":Z
    goto :goto_2

    .line 1161
    .restart local v2    # "isRecognitionSpeedUp":Z
    :cond_5
    const-string/jumbo v5, "RegisterFace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1162
    if-eqz v0, :cond_6

    .line 1163
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1165
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    .line 1167
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1168
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1171
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    const-string/jumbo v6, "FaceSettings_register"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap2(Lcom/samsung/android/settings/face/FaceSettings;Ljava/lang/String;)V

    .line 1172
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_3

    .line 1174
    :cond_8
    const-string/jumbo v5, "RemoveFace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1175
    if-nez v0, :cond_9

    .line 1176
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1178
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1180
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1181
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1184
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceSettings;)Z

    .line 1185
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f027b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1186
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 1187
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1189
    :cond_b
    const-string/jumbo v5, "TurnOnFace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1190
    if-nez v0, :cond_c

    .line 1191
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1193
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1194
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1196
    :cond_c
    if-eqz v1, :cond_d

    .line 1197
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1199
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1201
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1202
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1203
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "IrisUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1205
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1207
    :cond_e
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1208
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1211
    :cond_f
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1215
    :cond_10
    const-string/jumbo v5, "TurnOffFace"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1216
    if-nez v1, :cond_11

    .line 1217
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1219
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1221
    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1222
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1225
    :cond_12
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1226
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1228
    :cond_13
    const-string/jumbo v5, "TurnOnUseFaceWhenScreenOn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1229
    if-nez v0, :cond_14

    .line 1230
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1232
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1234
    :cond_14
    if-nez v1, :cond_15

    .line 1235
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlock"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1237
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1239
    :cond_15
    if-eqz v3, :cond_16

    .line 1241
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1243
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1245
    :cond_16
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1246
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1249
    :cond_17
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1250
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1254
    :cond_18
    const-string/jumbo v5, "TurnOffUseFaceWhenScreenOn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1255
    if-eqz v1, :cond_1a

    if-eqz v3, :cond_1a

    .line 1261
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1262
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1265
    :cond_19
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1266
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1257
    :cond_1a
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceUnlockWhenScreenTurnsOn"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1259
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1268
    :cond_1b
    const-string/jumbo v5, "TurnOnFasterRecognition"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1269
    if-nez v0, :cond_1c

    .line 1270
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "EnrolledFace"

    const-string/jumbo v7, "Exists"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1272
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1274
    :cond_1c
    if-eqz v2, :cond_1d

    .line 1275
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TurnOnFasterRecognition"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1277
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1279
    :cond_1d
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1280
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1281
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TurnOnFasterRecognition"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1284
    :cond_1e
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1287
    :cond_1f
    const-string/jumbo v5, "TurnOffFasterRecognition"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1288
    if-nez v2, :cond_20

    .line 1289
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TurnOffFasterRecognition"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1291
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    .line 1293
    :cond_20
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1294
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "TurnOffFasterRecognition"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "FaceSettings"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1297
    :cond_21
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/preference/SwitchPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1298
    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings$2;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
