.class Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADBPolicyInSecured"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;,
        Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;
    }
.end annotation


# instance fields
.field private mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;

.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .prologue
    .line 2984
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2985
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DISCONNECTION_ADB_IN_LOCK_MODE:Z

    if-eqz v0, :cond_0

    .line 2986
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBlockPolicyImpl;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;

    .line 2984
    :goto_0
    return-void

    .line 2988
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;

    goto :goto_0
.end method


# virtual methods
.method handleDismiss()V
    .locals 1

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;->handleDismiss()V

    .line 2992
    return-void
.end method

.method handleKeyguardDone()V
    .locals 1

    .prologue
    .line 2997
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;->mADBBlockPolicy:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBBasicPolicyImpl;->handleKeyguardDone()V

    .line 2996
    return-void
.end method
