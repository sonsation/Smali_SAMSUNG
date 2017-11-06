.class public interface abstract annotation Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$MimeType;
.super Ljava/lang/Object;
.source "SearchableAdapter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MimeType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALBUM:I = 0x2

.field public static final ARTIST:I = 0x1

.field public static final NOT_SUPPORT:I = -0x1

.field public static final TRACK:I = 0x3
