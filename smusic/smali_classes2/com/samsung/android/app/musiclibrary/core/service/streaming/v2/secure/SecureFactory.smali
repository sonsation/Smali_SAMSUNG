.class public final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureFactory;
.super Ljava/lang/Object;
.source "SecureFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureFactory;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSecure(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/ISecure;
    .locals 3
    .param p0, "type"    # I
    .param p1, "cafe"    # Ljava/lang/String;

    .prologue
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". It is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureAes;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/secure/SecureXor;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
