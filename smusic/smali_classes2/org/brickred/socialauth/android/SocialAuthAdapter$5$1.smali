.class Lorg/brickred/socialauth/android/SocialAuthAdapter$5$1;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$5;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$5;

    .prologue
    .line 725
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "provider"

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$5;

    iget-object v2, v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$700(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$5$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$5;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$5;->this$0:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-static {v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->access$300(Lorg/brickred/socialauth/android/SocialAuthAdapter;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/brickred/socialauth/android/DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 732
    return-void
.end method
