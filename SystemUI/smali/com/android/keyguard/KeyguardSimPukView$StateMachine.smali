.class Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    const/4 v1, 0x0

    .line 95
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 100
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$StateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_7

    .line 105
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap1(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 107
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_2

    .line 108
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_puk_enter_pin_hint:I

    .line 168
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v2, v2}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(ZZ)V

    .line 169
    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 102
    :cond_1
    return-void

    .line 109
    :cond_2
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_3

    .line 110
    sget v0, Lcom/android/keyguard/R$string;->kg_ctc_puk_enter_pin_hint:I

    goto :goto_0

    .line 113
    :cond_3
    sget v0, Lcom/android/keyguard/R$string;->kg_sec_puk_enter_pin_hint:I

    goto :goto_0

    .line 119
    :cond_4
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_6

    .line 120
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 121
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_empty_sim_puk_hint:I

    goto :goto_0

    .line 123
    :cond_5
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_invalid_sim_puk_hint:I

    goto :goto_0

    .line 126
    :cond_6
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    .line 129
    :cond_7
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_d

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap0(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 131
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 132
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_8

    .line 133
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_enter_confirm_pin_hint:I

    goto :goto_0

    .line 134
    :cond_8
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_9

    .line 135
    sget v0, Lcom/android/keyguard/R$string;->kg_ctc_enter_confirm_pin_hint:I

    goto :goto_0

    .line 137
    :cond_9
    sget v0, Lcom/android/keyguard/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_0

    .line 140
    :cond_a
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_c

    .line 141
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    .line 142
    sget v0, Lcom/android/keyguard/R$string;->kg_empty_sim_perso_hint:I

    goto :goto_0

    .line 144
    :cond_b
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_sim_pin_instructions:I

    goto :goto_0

    .line 147
    :cond_c
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    .line 150
    :cond_d
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 152
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 153
    sget v0, Lcom/android/keyguard/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap5(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto :goto_0

    .line 156
    :cond_e
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 157
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_10

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 159
    sget v0, Lcom/android/keyguard/R$string;->kg_empty_sim_perso_hint:I

    goto/16 :goto_0

    .line 161
    :cond_f
    sget v0, Lcom/android/keyguard/R$string;->kg_kor_invalid_confirm_pin_hint:I

    goto/16 :goto_0

    .line 164
    :cond_10
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_confirm_pin_hint:I

    goto/16 :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->-set1(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->-set2(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap3(Lcom/android/keyguard/KeyguardSimPukView;)V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 178
    return-void
.end method
