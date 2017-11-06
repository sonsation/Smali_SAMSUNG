.class Lcom/samsung/android/sdk/ppmt/network/NetworkManager$StringUtf8VolleyRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringUtf8VolleyRequest"
.end annotation


# static fields
.field private static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"


# instance fields
.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestBody"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 138
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$StringUtf8VolleyRequest;->mRequestBody:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$StringUtf8VolleyRequest;->mRequestBody:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 146
    :goto_0
    return-object v1

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/network/NetworkManager$StringUtf8VolleyRequest;->mRequestBody:Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method
