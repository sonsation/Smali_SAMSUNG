.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startCameraActivity(Landroid/content/Intent;ZLcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "val$callback"    # Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    if-eqz v0, :cond_0

    .line 4970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$55;->val$callback:Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ActivityStarter$Callback;->onActivityStarted(I)V

    .line 4968
    :cond_0
    return-void
.end method
