.class Lcom/android/server/policy/GlobalActions$38;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # Landroid/graphics/drawable/Drawable;
    .param p3, "$anonymous1"    # Ljava/lang/String;
    .param p4, "$anonymous2"    # I
    .param p5, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 2981
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$38;->this$0:Lcom/android/server/policy/GlobalActions;

    iput-object p5, p0, Lcom/android/server/policy/GlobalActions$38;->val$intent:Landroid/content/Intent;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .locals 1

    .prologue
    .line 3008
    const/4 v0, 0x1

    return v0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 2984
    :try_start_0
    iget v1, p0, Lcom/android/server/policy/GlobalActions$38;->customAction:I

    packed-switch v1, :pswitch_data_0

    .line 2998
    :pswitch_0
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "InvalidParameterException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PowerItem has no action with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/GlobalActions$38;->customAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3002
    :catch_0
    move-exception v0

    .line 3003
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2982
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 2986
    :pswitch_1
    :try_start_1
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "addCustomDialogItems ACTION_SEND_BROADCAST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$38;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$38;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2990
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$38;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$38;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2991
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "addCustomDialogItems ACTION_SEND_STICKY_BROADCAST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2994
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$38;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$38;->val$intent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2995
    const-string/jumbo v1, "GlobalActions"

    const-string/jumbo v2, "addCustomDialogItems ACTION_START_ACTIVITY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2984
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 3016
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 3020
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 3012
    const/4 v0, 0x1

    return v0
.end method
