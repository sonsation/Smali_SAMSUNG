.class Lcom/sec/android/app/camera/shootingmode/TagShot$5;
.super Ljava/lang/Object;
.source "TagShot.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/TagShot;->fetchLocationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$locationInfoListener:Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/TagShot;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$5;->this$0:Lcom/sec/android/app/camera/shootingmode/TagShot;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$5;->val$locationInfoListener:Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$5;->val$locationInfoListener:Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$5;->val$context:Landroid/content/Context;

    iget-object v2, p1, Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;->Key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;->onResult(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot$5;->onResponse(Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;)V

    return-void
.end method
