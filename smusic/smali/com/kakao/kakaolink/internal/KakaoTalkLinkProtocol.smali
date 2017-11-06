.class public final Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;
.super Ljava/lang/Object;
.source "KakaoTalkLinkProtocol.java"


# static fields
.field public static final ENCODING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/kakaolink/internal/KakaoTalkLinkProtocol;->ENCODING:Ljava/lang/String;

    return-void
.end method
