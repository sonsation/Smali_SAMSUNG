.class Lcom/samsung/android/settings/LGTRoamingEnv$2;
.super Landroid/telephony/PhoneStateListener;
.source "LGTRoamingEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/LGTRoamingEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/LGTRoamingEnv;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/LGTRoamingEnv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/LGTRoamingEnv;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 148
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 154
    const-string/jumbo v0, "LGTRoamingEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPhoneStateListener : + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get6(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get5(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get6(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get5(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->-wrap2(Lcom/samsung/android/settings/LGTRoamingEnv;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set2(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const-string/jumbo v0, "LGTRoamingEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPhoneStateListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v2}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get1(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string/jumbo v0, "LGTRoamingEnv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPhoneStateListener roaming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get3()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get1(Lcom/samsung/android/settings/LGTRoamingEnv;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get3()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isExceptionalUSIM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/LGTRoamingEnv;->-set0(Lcom/samsung/android/settings/LGTRoamingEnv;Z)Z

    goto :goto_0

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/LGTRoamingEnv$2;->this$0:Lcom/samsung/android/settings/LGTRoamingEnv;

    invoke-static {v0}, Lcom/samsung/android/settings/LGTRoamingEnv;->-get7(Lcom/samsung/android/settings/LGTRoamingEnv;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method
