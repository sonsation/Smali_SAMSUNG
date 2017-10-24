.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$2;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->onUserSwitchComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

.field final synthetic val$newUserId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;
    .param p2, "val$newUserId"    # I

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$2;->val$newUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$2;->val$newUserId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1$2;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-wrap4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 585
    return-void
.end method
