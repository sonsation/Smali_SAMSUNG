.class Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    return-void
.end method


# virtual methods
.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 15

    .prologue
    const/16 v14, 0x64

    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2115
    const/4 v2, 0x0

    .line 2116
    .local v2, "result":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get12()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get6()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v14, :cond_7

    :cond_0
    const/4 v5, 0x0

    .line 2117
    .local v5, "userId":I
    :goto_0
    const/4 v1, 0x0

    .line 2119
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 2120
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 2125
    :goto_1
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get14()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2126
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    .line 2129
    :cond_1
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get12()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get6()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2130
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2154
    :cond_3
    :goto_2
    iget-boolean v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v6, :cond_6

    .line 2155
    const/4 v3, 0x0

    .line 2156
    .local v3, "token":[B
    const/4 v4, 0x0

    .line 2158
    .local v4, "token_2nd":[B
    :try_start_0
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_c

    .line 2159
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v3

    .line 2165
    .local v3, "token":[B
    :goto_3
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge_2nd:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_4

    .line 2166
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge_2nd:J

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2173
    .end local v3    # "token":[B
    .end local v4    # "token_2nd":[B
    :cond_4
    :goto_4
    if-nez v3, :cond_5

    .line 2174
    const-string/jumbo v6, "ChooseLockPassword"

    const-string/jumbo v7, "critical: no token returned for known good password."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "result":Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2178
    .local v2, "result":Landroid/content/Intent;
    const-string/jumbo v6, "hw_auth_token"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2179
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge_2nd:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_6

    .line 2180
    const-string/jumbo v6, "hw_auth_token_2nd"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2184
    .end local v2    # "result":Landroid/content/Intent;
    :cond_6
    return-object v2

    .line 2116
    .end local v5    # "userId":I
    .local v2, "result":Landroid/content/Intent;
    :cond_7
    iget v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    .restart local v5    # "userId":I
    goto/16 :goto_0

    .line 2122
    .restart local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_8
    const-string/jumbo v6, "ChooseLockPassword"

    const-string/jumbo v7, "getActivity() got null value. It is for setIsFingerAsSupplement"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2134
    .end local v1    # "pm":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_9
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2136
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get15()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2139
    :cond_a
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get15()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-lt v6, v14, :cond_3

    .line 2140
    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v11, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v6

    if-nez v6, :cond_b

    .line 2142
    if-eqz v1, :cond_3

    .line 2143
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6, v10}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_2

    .line 2146
    :cond_b
    if-eqz v1, :cond_3

    .line 2147
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6, v11}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    goto/16 :goto_2

    .line 2161
    .local v3, "token":[B
    .restart local v4    # "token_2nd":[B
    :cond_c
    const/4 v6, 0x1

    :try_start_1
    new-array v3, v6, [B

    .line 2162
    .local v3, "token":[B
    const/4 v6, -0x1

    const/4 v7, 0x0

    aput-byte v6, v3, v7

    .line 2163
    const-string/jumbo v6, "ChooseLockPassword"

    const-string/jumbo v7, "critical: challenge returned zero."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 2168
    .end local v3    # "token":[B
    :catch_0
    move-exception v0

    .line 2169
    .local v0, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v3, 0x0

    .line 2170
    .local v3, "token":[B
    const/4 v4, 0x0

    goto/16 :goto_4
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "required"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "challenge_2nd"    # J
    .param p8, "chosenPassword"    # Ljava/lang/String;
    .param p9, "currentPassword"    # Ljava/lang/String;
    .param p10, "requestedQuality"    # I
    .param p11, "userId"    # I

    .prologue
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p11

    .line 2103
    invoke-virtual/range {v2 .. v10}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJJI)V

    .line 2105
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    .line 2106
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    .line 2107
    move/from16 v0, p10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    .line 2108
    move/from16 v0, p11

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    .line 2110
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->start()V

    .line 2102
    return-void
.end method
