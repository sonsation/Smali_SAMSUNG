.class public Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Updates;
.super Ljava/lang/Object;
.source "HWRResourceManagerContract.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "content://com.samsung.android.sdk.handwriting.resourcemanager/updates"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
