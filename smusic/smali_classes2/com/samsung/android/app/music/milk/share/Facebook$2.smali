.class Lcom/samsung/android/app/music/milk/share/Facebook$2;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/Facebook;->logoutFromFacebook(Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

.field final synthetic val$listener:Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/Facebook;Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/share/Facebook;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Facebook$2;->this$0:Lcom/samsung/android/app/music/milk/share/Facebook;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/Facebook$2;->val$listener:Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1
    .param p1, "graphResponse"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook$2;->val$listener:Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;->onLoggedOutFromFacebook()V

    .line 246
    return-void
.end method
