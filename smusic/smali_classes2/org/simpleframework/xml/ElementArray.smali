.class public interface abstract annotation Lorg/simpleframework/xml/ElementArray;
.super Ljava/lang/Object;
.source "ElementArray.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/simpleframework/xml/ElementArray;
        empty = true
        name = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract empty()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method
