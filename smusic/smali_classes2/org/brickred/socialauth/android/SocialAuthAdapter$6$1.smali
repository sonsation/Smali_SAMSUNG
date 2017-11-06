.class Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;
.super Ljava/lang/Object;
.source "SocialAuthAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$6;

.field final synthetic val$provider:Ljava/lang/String;

.field final synthetic val$response:Lorg/brickred/socialauth/util/Response;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthAdapter$6;Lorg/brickred/socialauth/util/Response;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/brickred/socialauth/android/SocialAuthAdapter$6;

    .prologue
    .line 847
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$6;

    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;->val$response:Lorg/brickred/socialauth/util/Response;

    iput-object p3, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;->val$provider:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 850
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;->val$response:Lorg/brickred/socialauth/util/Response;

    invoke-virtual {v1}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v0

    .line 851
    .local v0, "status":I
    iget-object v1, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;->this$1:Lorg/brickred/socialauth/android/SocialAuthAdapter$6;

    iget-object v1, v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$6;->val$listener:Lorg/brickred/socialauth/android/SocialAuthListener;

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthAdapter$6$1;->val$provider:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/brickred/socialauth/android/SocialAuthListener;->onExecute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 852
    return-void
.end method
