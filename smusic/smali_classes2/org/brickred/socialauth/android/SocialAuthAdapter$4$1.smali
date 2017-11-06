.class Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$4;)V
    .locals 0
    .param p1, "this$1"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    .prologue
    .line 642
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 645
    const-string v0, "SocialAuthAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$400(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->val$provider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->getCallBackUri()Ljava/lang/String;

    move-result-object v6

    .line 647
    .local v6, "callbackUri":Ljava/lang/String;
    const-string v0, "SocialAuthAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v0, Lorg/brickred/socialauth/android/SocialAuthDialog;

    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$400(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    iget-object v3, v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->val$provider:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    iget-object v4, v4, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$300(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v4

    iget-object v5, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$4$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$4;

    iget-object v5, v5, Lorg/brickred/socialauth/android/SocialAuthAdapter$4;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$500(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/SocialAuthManager;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/brickred/socialauth/android/SocialAuthDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;Lorg/brickred/socialauth/android/DialogListener;Lorg/brickred/socialauth/SocialAuthManager;)V

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->show()V

    .line 650
    return-void
.end method
