.class public interface abstract Lcom/xiaomi/common/Logger$ILog;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILog"
.end annotation


# virtual methods
.method public abstract Log(Lcom/xiaomi/common/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract Log(Lcom/xiaomi/common/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method

.method public abstract Log(Lcom/xiaomi/common/Logger$LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method
