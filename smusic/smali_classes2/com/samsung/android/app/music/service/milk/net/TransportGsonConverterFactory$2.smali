.class Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "TransportGsonConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory;->requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory$2;->this$0:Lcom/samsung/android/app/music/service/milk/net/TransportGsonConverterFactory;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
