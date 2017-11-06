.class public Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat;
.super Ljava/lang/Object;
.source "SubscriptionManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat$SimSlot;,
        Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat$SimSlotType;
    }
.end annotation


# static fields
.field private static final SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field private static final SIM_STATE_KEY:Ljava/lang/String; = "gsm.sim.state"

.field private static final SIM_STATE_READY:Ljava/lang/String; = "READY"

.field private static final SIM_STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSimSlot(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 26
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat;->getActiveSimSlotFromSep(Landroid/content/Context;)I

    move-result v0

    .line 30
    .local v0, "simSlot":I
    :goto_0
    return v0

    .line 28
    .end local v0    # "simSlot":I
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat;->getActiveSimSlotFromSdl()I

    move-result v0

    .restart local v0    # "simSlot":I
    goto :goto_0
.end method

.method private static getActiveSimSlotFromSdl()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 76
    const/4 v1, -0x1

    .line 77
    .local v1, "simSlot":I
    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "property":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "simStates":[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_1

    .line 80
    const/4 v1, 0x0

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 82
    const-string v3, "READY"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "READY"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const/4 v1, 0x2

    goto :goto_0

    .line 84
    :cond_2
    const-string v3, "READY"

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getActiveSimSlotFromSep(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v4, -0x1

    .line 35
    .local v4, "simSlot":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 36
    .local v3, "sb":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 37
    .local v0, "count":I
    if-nez v0, :cond_0

    move v5, v4

    .line 62
    .end local v4    # "simSlot":I
    .local v5, "simSlot":I
    :goto_0
    return v5

    .line 50
    .end local v5    # "simSlot":I
    .restart local v4    # "simSlot":I
    :cond_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    .line 51
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v6

    .line 52
    .local v6, "voiceSubId":I
    invoke-virtual {v3, v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 53
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    .line 54
    .local v1, "index":I
    if-nez v1, :cond_1

    .line 55
    const/4 v4, 0x0

    .end local v1    # "index":I
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "voiceSubId":I
    :goto_1
    move v5, v4

    .line 62
    .end local v4    # "simSlot":I
    .restart local v5    # "simSlot":I
    goto :goto_0

    .line 57
    .end local v5    # "simSlot":I
    .restart local v1    # "index":I
    .restart local v2    # "info":Landroid/telephony/SubscriptionInfo;
    .restart local v4    # "simSlot":I
    .restart local v6    # "voiceSubId":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 60
    .end local v1    # "index":I
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "voiceSubId":I
    :cond_2
    const/4 v4, 0x2

    goto :goto_1
.end method
