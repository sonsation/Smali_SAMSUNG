.class Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;
.super Lorg/simpleframework/xml/util/ConcurrentCache;
.source "ScannerBuilder.java"

# interfaces
.implements Lorg/simpleframework/xml/convert/Scanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/convert/ScannerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/ConcurrentCache",
        "<",
        "Ljava/lang/annotation/Annotation;",
        ">;",
        "Lorg/simpleframework/xml/convert/Scanner;"
    }
.end annotation


# instance fields
.field private final root:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->root:Ljava/lang/Class;

    .line 94
    return-void
.end method

.method private find(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->root:Ljava/lang/Class;

    .line 130
    :goto_0
    if-nez v0, :cond_0

    .line 138
    return-object v2

    .line 131
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 133
    if-nez v1, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_1
    return-object v1
.end method


# virtual methods
.method public scan(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    return-object v0

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->find(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 110
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/convert/ScannerBuilder$Entry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
