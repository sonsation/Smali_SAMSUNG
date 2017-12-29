.class Lcom/android/server/policy/SamsungPhoneWindowManager$30;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->handleLongPressOnRecent()Z
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
    .line 3967
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$30;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3971
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 3974
    .local v0, "statusBarManagerInternal":Lcom/android/server/statusbar/StatusBarManagerInternal;
    const-string v1, "fromFullApp"

    .line 3973
    const/4 v2, 0x0

    .line 3972
    invoke-interface {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showSnapWindowGuideView(ILjava/lang/String;)V

    .line 3969
    return-void
.end method
