.class Lcom/android/server/policy/SamsungPhoneWindowManager$24;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$24;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    packed-switch p1, :pswitch_data_0

    .line 1313
    :goto_0
    :pswitch_0
    return-void

    .line 1316
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$24;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set7(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_0

    .line 1320
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$24;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set7(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    goto :goto_0

    .line 1314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
