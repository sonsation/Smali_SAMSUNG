.class public Lcom/android/server/policy/PhoneWindowManager$VolumeDown;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeDown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$VolumeDown;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VolumeDown;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->vol_btn_down:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$VolumeDown;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VolumeDown;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/PhoneWindowManager;->vol_btn_down:I

    const-string v2, "Infinity_vol_btn_down"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->remoteExecuteAction(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$VolumeDown;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mIsVolLongPressed:Z

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    :cond_0
    return-void
.end method
